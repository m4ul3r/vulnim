import prologue

import ./views


let 
  indexPatterns* = @[
    pattern("/", views.index, @[HttpGet], name = "index")
  ]

  authPatterns* = @[
    pattern("/login", views.login, @[HttpGet, HttpPost], name = "login"),
    pattern("/logout", views.logout, @[HttpGet, HttpPost], name = "logout"),
    pattern("/register", views.register, @[HttpGet, HttpPost], name = "register")
  ]

  adminPatterns* = @[
    pattern("", views.admin, @[HttpGet], name = "admin"),
    pattern("/ping", views.ping, @[HttpGet, HttpPost], name = "ping"),
    pattern("/source", views.source, @[HttpGet, HttpPost], name = "source"),
  ]

  commentsPatterns* = @[
    pattern("", views.comments, @[HttpGet, HttpPost], name = "comments"),
  ]

  apiPatterns* = @[
    pattern("/users", views.users, @[HttpGet, HttpPost], name = "users"),
    pattern("/pyRun", views.pyRun, @[HttpGet, HttpPost], name = "pyRun"),
    pattern("/viewer", views.viewer, @[HttpGet, HttpPost], name = "viewer"),
  ]
