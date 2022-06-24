import karax/[karaxdsl, vdom]
import prologue

import 
  share/[head, nav, foot]

proc viewerSection*(ctx: Context, res, query: string): VNode =
  var introText = """
  Take a look at our company information, you can search for our employees and get feedback
  """

  result = buildHtml(main(class = "content")):
    h3: text "Viewer"
    p: text introText
    
    form(`method` = "post"):
      input(name = "name", id = "name", required = "required")
      input(`type` = "submit", value = "name")

    if res.len > 0:
      verbatim(res)

proc viewerPage*(ctx: Context, title: string, res: string = "", query: string = ""): string =
  let 
    head = sharedHead(ctx, title)
    nav = sharedNav(ctx)
    main = viewerSection(ctx, res, query)
    foot = sharedFoot()
    
  let vNode = buildHtml(html):
    head
    nav
    main
    foot
    
  result = "<!DOCTYPE html>\n" & $vNode