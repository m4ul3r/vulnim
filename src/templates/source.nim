import karax/[karaxdsl, vdom]
import prologue

import 
  share/[head, nav, foot]

proc sourceSection*(ctx: Context, res, cwd, ls: string): VNode =
  var 
    introText = """
    As an admin, you can view the source code of the site.
    """

  result = buildHtml(main(class = "content")):
    h3: text "View the source code"
    verbatim("<br>")
    p: text introText

    p: text "What file would you like to read?"
    form(`method` = "post"):
      input(name = "file", id = "file", required = "required")
      input(`type` = "submit", value = "submit")
    
    if res.len > 0:
      h4: text "Result:"
      verbatim(res)

    else:
      p: 
        text "The current working directory is: "
        em:
          text cwd
        verbatim("<br><br>")
        text "This directory contains: "
        verbatim(ls)
    

proc sourcePage*(ctx: Context, title: string, res, cwd, ls: string = ""): string =
  let 
    head = sharedHead(ctx, title)
    nav = sharedNav(ctx)
    main = sourceSection(ctx, res, cwd, ls)
    foot = sharedFoot()

  let vNode = buildHtml(html):
    head
    nav
    main
    foot
  
  result = "<!DOCTYPE html>\n" & $vNode