import std/[db_sqlite, osproc, strutils, strformat]
import prologue
import prologue/security/hasher

import ./consts

import
  templates/index,
  templates/login,
  templates/register,
  templates/ping,
  templates/admin,
  templates/source,
  templates/comments,
  templates/users,
  templates/pyRun,
  templates/viewer
    

proc checkAdmin(ctx: Context): bool =
  try:
    var userId = ctx.session["userId"]
    if userId == "1":
      return true
    else:
      return false
  except:
    return false


# /
proc index*(ctx: Context) {.async.} =
  resp htmlResponse(indexPage(ctx, "index"))

# /auth/login
proc login*(ctx: Context) {.async.} =
  if ctx.request.reqMethod == HttpPost:
    var
      error: string
      id: string
      encodedPassword: string
    let
      db = open(consts.dbPath, "", "", "")
      username = ctx.getPostParams("username")
      password = SecretKey(ctx.getPostParams("password"))
      row = db.getRow(sql"SELECT * FROM users WHERE username = ?", username)
    db.close()
    if row[1].len == 0:
      error = "Incorrect username or password"
    else:
      id = row[0]
      encodedPassword = row[2]
      if not pbkdf2_sha256verify(password, encodedPassword):
        error = "Incorrect password"

    if error.len == 0:
      ctx.session.clear()
      ctx.session["userId"] = id
      ctx.session["username"] = username
      resp redirect(urlFor(ctx, "index"), Http302)
    else:
      resp htmlResponse(loginPage(ctx, "Login", error))
  else:
    resp htmlResponse(loginPage(ctx, "Login"))

# /auth/logout
proc logout*(ctx: Context) {.async.} =
  ctx.session.clear()
  resp redirect(urlFor(ctx, "index"), Http302)

# /auth/register
proc register*(ctx: Context) {.async.} =
  if ctx.request.reqMethod == HttpPost:
    let db = open(consts.dbPath, "", "", "")
    var 
      error: string
    
    let
      username = ctx.getPostParams("username")
      password = pbkdf2_sha256encode(SecretKey(ctx.getPostParams("password")), "secret")

    if username.len == 0:
      error = "Username is required"
    elif password.len == 0:
      error = "Password is required"
    elif db.getRow(sql"SELECT * FROM users WHERE username = ?", username)[1].len != 0:
      error = "Username is already taken"
    
    if error.len == 0:
      db.exec(sql"INSERT INTO users (username, password) VALUES (?, ?)", username, password)
      db.close()
      resp redirect(urlFor(ctx, "login"), Http302)
    else:
      db.close()
      resp htmlResponse(registerPage(ctx, "Register", error))
  else:
    resp htmlResponse(registerPage(ctx, "Register"))
    

# /admin/
proc admin*(ctx: Context) {.async.} =
  if checkAdmin(ctx):
    resp htmlResponse(adminPage(ctx, "admin"))
  else:
    resp redirect(urlFor(ctx, "index"), Http302)


# /admin/ping
proc ping*(ctx: Context) {.async.} =
  if checkAdmin(ctx) == false:
    resp redirect(urlFor(ctx, "index"), Http302)
    return 

  if ctx.request.reqMethod == HttpPost:
    let host = ctx.getPostParams("host")
    if ";" in host or "&&" in host:
      let res = "Invalid hostname"
      resp htmlResponse(pingPage(ctx, "Ping", res))
    else:
      var 
        cmd = "ping -c 4 " & host
        (res, _) = execCmdEx(cmd)
      res = "<p>" & res.replace("\n", "<br>") & "</p>"
      resp htmlResponse(pingPage(ctx, "Ping", res))
  else:
    resp htmlResponse(pingPage(ctx, "Ping"))
  
# /admin/source
proc source*(ctx: Context) {.async.} =
  if checkAdmin(ctx) == false:
    resp redirect(urlFor(ctx, "index"), Http302)
    return 


  if ctx.request.reqMethod == HttpPost:
    let 
      file = ctx.getPostParams("file")
      data = readFile("./" & file)
    var res = "<p>" & data.replace("\n", "<br>") & "</p>"
    resp htmlResponse(sourcePage(ctx, "Source", res=res))

  else:
    var 
      (cwd, _) = execCmdEx("pwd")
      (ls, _) = execCmdEx("ls")
    ls = "<p>" & ls.replace("\n", "<br>") & "</p>"
    resp htmlResponse(sourcePage(ctx, "Source", cwd=cwd, ls=ls))

# /comments/
proc comments*(ctx: Context) {.async.} =
  if ctx.request.reqMethod == HttpPost:
    let db = open(consts.dbPath, "", "", "")
    var
      comment = ctx.getPostParams("comment")
      userId = ctx.session.getOrDefault("userId", "2")
      denyList = @["script", "img", "iframe", "style"]
    for i in denyList:
      comment = comment.replace(i, "")
    db.exec(sql"INSERT INTO comments (user_id, comment) VALUES (?, ?)", userId, comment)
    db.close()
    resp redirect(urlFor(ctx, "comments"), Http302)
  else:
    let db = open(consts.dbPath, "", "", "")
    var cmnts: seq[seq[string]] = @[]
    for x in db.fastRows(sql"SELECT * FROM comments"):
      cmnts.add(x)
    db.close()
    resp htmlResponse(commentsPage(ctx, "comments", cmnts=cmnts))

# /api/users
proc users*(ctx: Context) {.async.} =
  var userId = ctx.getQueryParams("userId")
  if userId == "":
    userId = ctx.session.getOrDefault("userId", "2")
    resp redirect(urlFor(ctx, "users", queryParams = @[("userId", userId)]), Http302)

  else:
    let 
      db = open(consts.dbPath, "", "", "")
      row = db.getRow(sql"SELECT * FROM users WHERE id = ?", userId)
      username = row[1]
    db.close()
    resp htmlResponse(usersPage(ctx, "users", username))

# /api/pyRun
proc pyRun*(ctx: Context) {.async.} =
  if ctx.request.reqMethod == HttpGet:
    resp htmlResponse(pyPage(ctx, "pyRun"))
  elif ctx.request.reqMethod == HttpPost:
    let 
      file = ctx.getUploadfile("file")
      filename = &"/tmp/{file.filename}"
    writeFile(filename, file.body.replace("import os", ""))
    var 
      (res, _) = execCmdEx("python3 " & filename)
    res = res.replace("\n", "<br>")
    resp htmlResponse(pyPage(ctx, "pyRun", res=res))
  
  else:
    resp htmlResponse(pyPage(ctx, "pyRun"))

# /api/viewer
proc viewer*(ctx: Context) {.async.} =
  if ctx.request.reqMethod == HttpPost:
    let 
      name = ctx.getPostParams("name")
      db = open(consts.dbPath, "", "", "")
      
    var 
      q = &"SELECT * FROM employees WHERE first_name LIKE '%{name}%'"
      query = sql(q)
      res = db.getAllRows(query)
    db.close()

    var result = ""
    for i in res:
      result &= i.join(", ")
      result &= "\n"
    result = "<p>" & result.replace("\n", "<br>") & "</p>"
    resp htmlResponse(viewerPage(ctx, "viewer", res=result, query=q))
  else:
    resp htmlResponse(viewerPage(ctx, "viewer"))