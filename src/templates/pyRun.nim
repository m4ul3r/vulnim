import karax/[karaxdsl, vdom]
import prologue

import 
  share/[head, nav, foot]

proc pySection*(ctx: Context, res: string = ""): VNode =
  var introText = """
  Upload a python script and we'll run it for you.
  """
  result = buildHtml(main(class = "content")):
    h3: text "pyRunner"
    p: text introText
    
    if res.len == 0:
      form(`method` = "post", enctype="multipart/form-data"):
        input(name = "file", `type` = "file", value = "eva")
        input(name = "submit", `type` = "submit", value = "submit")
    else:
      verbatim(res)
      verbatim("<br/>")

proc pyPage*(ctx: Context, title: string, res: string = ""): string =
  let 
    head = sharedHead(ctx, title)
    nav = sharedNav(ctx)
    main = pySection(ctx, res)
    foot = sharedFoot()
    
  let vNode = buildHtml(html):
    head
    nav
    main
    foot
    
  result = "<!DOCTYPE html>\n" & $vNode