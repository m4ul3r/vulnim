import karax/[karaxdsl, vdom]
import prologue

import 
  share/[head, nav, foot]

proc adminSection*(ctx: Context): VNode =
  var introText = """
  Welcome, almighty administrator. What would you like to do today?
  """
  result = buildHtml(main(class = "content")):
    h3: text "Admin Panel"
    p: text introText
    ul:
      li:
        a: a(href = "/admin/ping"): text "Ping"
      li:
        a: a(href = "/admin/source"): text "View-Source"

proc adminPage*(ctx: Context, title: string): string =
  let 
    head = sharedHead(ctx, title)
    nav = sharedNav(ctx)
    main = adminSection(ctx)
    foot = sharedFoot()

  let vNode = buildHtml(html):
    head
    nav
    main
    foot
  
  # Don't forget Doctype declaration to avoid any failing validation tests
  # like this one https://validator.w3.org/
  result = "<!DOCTYPE html>\n" & $vNode