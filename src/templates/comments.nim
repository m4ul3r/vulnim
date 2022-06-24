import karax/[karaxdsl, vdom]
import prologue
import strformat

import 
  share/[head, nav, foot]

proc indexSection*(ctx: Context): VNode =
  var introText = """
  Comments get posted here! Post a comment!
  """
  result = buildHtml(main(class = "content")):
    h3: text "Comments"
    p: text introText
    form(`method` = "post"):
      input(name = "comment", id = "comment", required = "required")
      input(`type` = "submit", value = "post")


proc commentSection*(ctx: Context, cmnts: seq[seq[string]]): VNode = 
  result = buildHtml(main(class = "content")):
    if cmnts.len > 0:
      for comment in cmnts:
        tdiv(class = "post"):
          tdiv:
            tdiv(class = "about"): 
              text fmt"""by {comment[1]} on {comment[2]}"""
          p(class = "comment"): 
            verbatim(comment[3])

proc commentsPage*(ctx: Context, title: string, cmnts: seq[seq[string]]): string =
  let 
    head = sharedHead(ctx, title)
    nav = sharedNav(ctx)
    main = indexSection(ctx)
    comments = commentSection(ctx, cmnts)

    foot = sharedFoot()

  let vNode = buildHtml(html):
    head
    nav
    main
    if cmnts.len > 0:
      comments
    foot
    
  result = "<!DOCTYPE html>\n" & $vNode