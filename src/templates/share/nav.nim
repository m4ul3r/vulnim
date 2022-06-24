import prologue
import karax/[karaxdsl, vdom]

proc sharedNav*(ctx: Context): VNode =
  let username = ctx.session.getOrDefault("username", "")
  let vNode = buildHtml(header):
    nav:
      tdiv(class = "test"):
        a(href = "/"):
          text "Home"
      ul:
        if username.len == 0:
          li: a(href = "/auth/register"): text "Register"
          li: a(href = "/auth/login"): text "Login"
          li: a(href = "/comments"): text "Comments"
          li: a(href = "/api/users"): text "Users"

        elif username == "admin":
          li: span: text username
          li: a(href = "/admin/"): text "Admin"
          li: a(href = "/auth/logout"): text "Logout"
          li: a(href = "/comments"): text "Comments"
          li: a(href = "/api/users"): text "Users"
          li: a(href = "/api/pyRun"): text "pyRun"
          li: a(href = "/api/viewer"): text "Viewer"

        else:
          li: span: text username
          li: a(href = "/auth/logout"): text "Logout"
          li: a(href = "/comments"): text "Comments"
          li: a(href = "/api/users"): text "Users"
          li: a(href = "/api/pyRun"): text "pyRun"
          li: a(href = "/api/viewer"): text "Viewer"



  return vNode