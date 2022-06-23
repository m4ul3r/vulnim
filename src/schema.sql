DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS comments;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    comment TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);


INSERT INTO users (username, password) VALUES ('admin', 'pdkdf2_sha256$secret$24400$ijlubkv426j5l92kH9/xR34S08Yx3nAX5EOI2eTZ3XBSw7tg1URuaB2JlU/NTMqwdJ6dO1ge0FBZGAXMFFuiZA==');
INSERT INTO users (username, password) VALUES ('anonymous', 'anonymous');
