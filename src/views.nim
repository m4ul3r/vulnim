import std/[db_sqlite, osproc, strformat, strutils]
import prologue
import prologue/security/hasher

import ./consts

import
  templates/index,
  templates/login,
  templates/ping,
  templates/admin,
  templates/source,
  templates/comments

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