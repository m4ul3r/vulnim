import prologue
import karax/[karaxdsl, vdom]

# This is the <head> html section that is shared by all templates
proc sharedHead*(ctx: Context, title: string): VNode = 
  let
    env = loadPrologueEnv(".env")
    appName = env.getOrDefault("appName", "Prologue")

  let vNode = buildHtml(head):
    title: text title & " - " & appName
    link(rel = "stylesheet", href = "/static/main.css")
    link(rel = "stylesheet", href = "/static/layout.css")
  return vNode