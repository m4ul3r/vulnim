import karax/[karaxdsl, vdom]
import prologue

import 
  share/[head, nav, foot]

proc usersSection*(ctx: Context, username: string = ""): VNode =
  var introText = """
  Find out your username!
  """
  result = buildHtml(main(class = "content")):
    h3: text "Users"
    p: text introText
    if username.len > 0:
      p: 
        text "Your username is: "
        em:
          text username


proc usersPage*(ctx: Context, title: string, username:string = ""): string =
  let 
    head = sharedHead(ctx, title)
    nav = sharedNav(ctx)
    main = usersSection(ctx, username)
    foot = sharedFoot()
    
  let vNode = buildHtml(html):
    head
    nav
    main
    foot
    
  result = "<!DOCTYPE html>\n" & $vNode