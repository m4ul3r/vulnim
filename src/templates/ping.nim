import karax/[karaxdsl, vdom]
import prologue

import 
  share/[head, nav, foot]

proc pingSection*(ctx: Context, res: string): VNode =
  var 
    introText = """
    The ping command is used to send ICMP ECHO_REQUEST to network hosts.
    Feel free to try it out!
    """
    infoText = """
    The command being run is: 
    """

  result = buildHtml(main(class = "content")):
    h3: text "Ping"
    verbatim("<br>")
    p: text introText
    p: 
      text infoText
      em: text "ping -c 4 <host>"
    
    form(`method` = "post"):
      input(name = "host", id = "host", required = "required")
      input(`type` = "submit", value = "ping")

    if res.len > 0:
      h4: text "Result:"
      verbatim(res)

proc pingPage*(ctx: Context, title: string, res: string = ""): string =
  let 
    head = sharedHead(ctx, title)
    nav = sharedNav(ctx)
    main = pingSection(ctx, res)
    foot = sharedFoot()

  let vNode = buildHtml(html):
    head
    nav
    main
    foot
  
  # Don't forget Doctype declaration to avoid any failing validation tests
  # like this one https://validator.w3.org/
  result = "<!DOCTYPE html>\n" & $vNode