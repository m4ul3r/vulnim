import prologue
import karax/[karaxdsl, vdom]

# This is the <foot> html section that is shared by all templates
proc sharedFoot*(): VNode = 
  let
    env = loadPrologueEnv(".env")

  let vNode = buildHtml(footer):
    p:
      text "Made with " 
      a(href="https://nim-lang.org/"): text "nim"
  return vNode