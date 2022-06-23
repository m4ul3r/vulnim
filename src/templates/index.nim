import karax/[karaxdsl, vdom]
import prologue

import 
  share/[head, nav, foot]

proc indexSection*(ctx: Context): VNode =
  var introText = """
  A vulnerable web application written in nim using karax and prologue.
  This web app focuses on the OWASP Top 10 vulnerabilities.
  """
  let username = ctx.session.getOrDefault("username")
  if username.len == 0:
    result = buildHtml(main(class = "content")):
      h3: text "vulnim"
      p: text introText
  else:
    result = buildHtml(main(class = "content")):
      h3: text "vulnim"
      p: text introText
      p: 
        text "You are logged in as: " 
        em: text username 
      # a: href "/logout": text "Logout"

proc owaspSection*(ctx: Context): VNode =
  result = buildHtml(main(class = "body")):
    h3: text "OWASP Top 10: 2021"
    ol:
      li: a(href = "https://owasp.org/Top10/A01_2021-Broken_Access_Control/"): text "Broken Access Control"
      li: a(href = "https://owasp.org/Top10/A02_2021-Cryptographic_Failures/"): text "Cryptographic Failures"
      li: a(href = "https://owasp.org/Top10/A03_2021-Injection/"): text "Injection"
      li: a(href = "https://owasp.org/Top10/A04_2021-Insecure_Design/"): text "Insecure Design"
      li: a(href = "https://owasp.org/Top10/A05_2021-Security_Misconfiguration/"): text "Security Misconfiguration"
      li: a(href = "https://owasp.org/Top10/A06_2021-Vulnerable_and_Outdated_Components/"): text "Vulnerable and Outdated Components"
      li: a(href = "https://owasp.org/Top10/A07_2021-Identification_and_Authentication_Failures/"): text "Identification and Authentication Failures"
      li: a(href = "https://owasp.org/Top10/A08_2021-Software_and_Data_Integrity_Failures/"): text "Software and Data Integrity Failures"
      li: a(href = "https://owasp.org/Top10/A09_2021-Security_Logging_and_Monitoring_Failures/"): text "Security Logging and Monitoring Failures"
      li: a(href = "https://owasp.org/Top10/A10_2021-Server-Side_Request_Forgery_%28SSRF%29/"): text "Server-Side Request Forgery (SSRF)"



proc indexPage*(ctx: Context, title: string): string =
  let 
    head = sharedHead(ctx, title)
    nav = sharedNav(ctx)
    main = indexSection(ctx)
    body = owaspSection(ctx)
    foot = sharedFoot()

  let vNode = buildHtml(html):
    head
    nav
    main
    body
    foot
  
  # Don't forget Doctype declaration to avoid any failing validation tests
  # like this one https://validator.w3.org/
  result = "<!DOCTYPE html>\n" & $vNode