## Create users for schema.sql
## INSERT INTO users (username, password) VALUES ('admin', '');

import prologue
import prologue/security/hasher
import sequtils, random, strutils, strformat

var alpha = {'A'..'Z', 'a'..'z'}
proc randomString(): string =

  for _ in 0 .. 15:
    add(result, sample(alpha))

randomize()

for i in 0 .. 97:
  var 
    password = pbkdf2_sha256encode(SecretKey(randomString()), "secret")
    target = &"INSERT INTO users (username, password) VALUES ('{randomString()}', '{password}');"
  echo target