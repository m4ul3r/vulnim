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

CREATE TABLE flag (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	flag TEXT NOT NULL
);


INSERT INTO users (username, password) VALUES ('admin', 'pdkdf2_sha256$secret$24400$5vFxihhPp7qYTXppAKlJ2wmoOm6743ZU35JMV72AeG2ndnAN6TNJqNnkmPZvkoK4/QYmEG1RqTOIkPaZxCLxWQ==');
INSERT INTO users (username, password) VALUES ('anonymous', 'anonymous');
INSERT INTO users (username, password) VALUES ('euRsnLfMAtTYgsMk', 'pdkdf2_sha256$secret$24400$4mmSFd1ksNxlIShNdzhhT8mLOQpSL1E1eUIaLY24X++lZGxODNapR37l8vzckSaJtJf7NcgBXceMr0T2veYL0w==');
INSERT INTO users (username, password) VALUES ('aEpKlsUkHfpsoAuA', 'pdkdf2_sha256$secret$24400$8WdfAojco4m9NWYrqDCts1aHb2X3MNijSsTAl8c/ZOpupXadvm7O7nlXHE6fBDFQWTmikWsQUoJoYQmRUx3D7g==');
INSERT INTO users (username, password) VALUES ('gpABeYECqjLhsxRc', 'pdkdf2_sha256$secret$24400$f1JxhW2bFerpx1dLec/iTCkpvp3nwVE2DAlpT8B+HDx0MhlQOX/nFR4ca1ezcTZ1E9Vapnh8xPG5CvKInpge2A==');
INSERT INTO users (username, password) VALUES ('WCiWRCYnRaCjdCeK', 'pdkdf2_sha256$secret$24400$FkrtlHiU2LDF3nV3qIN3FVhBfe5chhs/8b9Ic3DgvZ/trmIykt2Rb7EQwI5kNbuRLpFY3VX2pb/6MiwM7xQkQQ==');
INSERT INTO users (username, password) VALUES ('nMRcIfoORGdsgwsZ', 'pdkdf2_sha256$secret$24400$QJXsnZRysDNo/5162Ih/75oGOhi5Y480BdGHLvTch8qAaC5vNhriODHK/O16emxHQAha5fmlyvaU4P2QUXh65Q==');
INSERT INTO users (username, password) VALUES ('cQxAiTcmHftfVfAL', 'pdkdf2_sha256$secret$24400$LYWaDxPVCmiLOv2qkDsmWVi0jm5aJ77azHCKDlmyobn8t5pectn6pmJzWimTBPP1PkXnj69Lg2Lqa6/69vwVQw==');
INSERT INTO users (username, password) VALUES ('GouRnUCkvGiugllX', 'pdkdf2_sha256$secret$24400$BSpKdIMFRTPoa517MdfcYBIVfHpKqjs8XD3flMOoG+8vn9xKF59PZH8y0xRqEuozn0Vn9sQuqaik1CljwB+NcQ==');
INSERT INTO users (username, password) VALUES ('PABSJyYNUQPoneeZ', 'pdkdf2_sha256$secret$24400$2VEm7aXb2Z1CSrClHp00MsdL1kS8m2VaCB/UhGipyh9NIlwVVisKpTpTqmbZZD9Uf+TFeP1p9F+5mb5PdDnB7A==');
INSERT INTO users (username, password) VALUES ('ryorEVuwbVvOKVCW', 'pdkdf2_sha256$secret$24400$sW2agqpvlKdCniRq4al/LnajYBiV8fJn1a0vS4sUqfIhI8fVVUcNKl0HAfn0dgPwdW1tMiyVIU3iLImjFBT7KQ==');
INSERT INTO users (username, password) VALUES ('WpSPnctVDKxrXLbQ', 'pdkdf2_sha256$secret$24400$HdxlEB/T9d5i/W0ZkcWqw47BZeq71jaEbIoHvlIeD4VcqRXSVLShHQ5OflGm0oOTNh07kIR2hjOv68hQEeDcUw==');
INSERT INTO users (username, password) VALUES ('ADyVzRqZhxhcxApF', 'pdkdf2_sha256$secret$24400$vgWath+BJZJtLp16AfYQOVB3rH+1fQp55b8oTXrB94kXOYcVsHyukZfPH5zkL/mkPrmtNQ/bnVXqDYJcJLB6jQ==');
INSERT INTO users (username, password) VALUES ('hBDzrwJsuhVANgSa', 'pdkdf2_sha256$secret$24400$46m7PyWNhQYJHwdwhaw4w9DYDTIngPw5GTMuNpzXh3twRRO/H9NFCJCGWJuKawArHMAoBMSGpsb9V9el0nbXTw==');
INSERT INTO users (username, password) VALUES ('ySiZCCMSPSPosSTu', 'pdkdf2_sha256$secret$24400$9IreNWDMxuSMfvIifSoRcmF0uN1nnn5KMqXq0GtbNsIV0bV9ciyw3ydwj6/U+Wtdpi11KKymnvQIIDhI/S0vYg==');
INSERT INTO users (username, password) VALUES ('yRlRBEdxWxnggnQA', 'pdkdf2_sha256$secret$24400$Wg0ofNRavq04Uc+TO7cuE5QeGmZw+dKxwCIB1xHiSi3GX4nURvmuH8cFvCujlRJWUzB+Y7EzniEfvsJByp8Egg==');
INSERT INTO users (username, password) VALUES ('NthpHCNJZMseibBE', 'pdkdf2_sha256$secret$24400$q/3juaEO5MabXnFHZPD0is9lZUuu65ctM6hJJpiZ4KeVJAod0lSVHtypsbvrfiVp7aqHkA3p4ji8jFDpVru6YQ==');
INSERT INTO users (username, password) VALUES ('hNjzaZnppHbEHRlA', 'pdkdf2_sha256$secret$24400$GjftwXAd100QJW18jLi3mjAuO/ekNrOMkKSZTPnDP7yxQXt5W593Q0za9OYp5hcC9XyyWVmbxPRJs8c1vATReQ==');
INSERT INTO users (username, password) VALUES ('ZOLZhDjaYgRYzLVa', 'pdkdf2_sha256$secret$24400$HmeXoDKe/GxRaDqMpF9RHLK2ZZTUfna/mmnWGZHxsNdR+kwpYBVo+AJwBFYn2WXdvBKSSywF4RZMz4R34vdY3Q==');
INSERT INTO users (username, password) VALUES ('MIzWlrofClpszuIz', 'pdkdf2_sha256$secret$24400$RVwNIDuctwAC0+6FM4KYBVe6y5IaBvqmFdF+Yt5H77xRWUrNNLNoNn7oEaiCsUWloIO9Oie02BHt0rCCJ7XHnA==');
INSERT INTO users (username, password) VALUES ('jgrkeSJWPvYRgtiV', 'pdkdf2_sha256$secret$24400$ygNPwr4vM6ESv8JYDN9tUWmYpBmiDyZmIXXM6OA+ZHeQ/aUZYYad1hXYC3mUnmVTtlMmNeGFnq/hq/RnqkvReA==');
INSERT INTO users (username, password) VALUES ('jjNtpPMxDeTKuBvi', 'pdkdf2_sha256$secret$24400$OYCAcIDkaWnL81T1XBqbj9Ng3aQLq7KwbpCk8H/s96hcGSnPkE50266Fh2X62fFgFmjs8VkPUYx+AiWVR6rU6w==');
INSERT INTO users (username, password) VALUES ('mUTrusySbYdffZoN', 'pdkdf2_sha256$secret$24400$+XH+L3oBxe6tsa16bJZXr9i3iZJf4MLpeDdP8Cfhf8C+iAWCO89NPpqIgY8MUmFw8LgK5y16Egoat+iCPb7rYg==');
INSERT INTO users (username, password) VALUES ('mjPqsXHvCbbOeQfX', 'pdkdf2_sha256$secret$24400$IsMBuEJBO2bv3BrsgDrjZtxsZ4m9DQ4EXy88HqPdNu1LawM39mE/AD9fTNUDFzoLKTRwMAdLwuDWqcqMUtIV0w==');
INSERT INTO users (username, password) VALUES ('oMUZSoRoDzQvgZuJ', 'pdkdf2_sha256$secret$24400$lWA15dROVnf34nUIEDar+6GtpKbmbYNrqPIewK+EtcAbUSzpM4pcxR/yExiYH/CfXhWDue2JTo5NF2WLUXINLA==');
INSERT INTO users (username, password) VALUES ('mGDJZSdtXNKdrBSK', 'pdkdf2_sha256$secret$24400$HQXGVEvQOIJ+neN58SGh4H1f++Dzm6g3PDaKv/1ZayOp64KIyqVj/cOlnZ79NY8pZIxATQjiUEAdmE/thfcP6Q==');
INSERT INTO users (username, password) VALUES ('AqdyhkdiJyhWUFfe', 'pdkdf2_sha256$secret$24400$Pbdz08klcgxSjqSI0M9uWGiikcJO+MjxuepzbdO+8+j/DFdi69Rlv+JDWcc5XQx2S1im6SgXw12XOmySYIimOw==');
INSERT INTO users (username, password) VALUES ('FpiuDNGitboQCICa', 'pdkdf2_sha256$secret$24400$CCCuTFdkROT+z5KVqUxFcYg0gvpbru0W1WJL/DSVZkWdF1Je6RDZnGal0s3K7M8Bk43w1YG7oCkej7tKwuRD4w==');
INSERT INTO users (username, password) VALUES ('HCHbmkgJMwioGVPx', 'pdkdf2_sha256$secret$24400$LAp03jEUJESFkGmf9DTOr8krWEYa7qYP17aoWjVELXCVzbT7BmZDDnximtV5Fsr5zcUpxbxsSZ4r2Y1eMjEskw==');
INSERT INTO users (username, password) VALUES ('VhBePpjTsHjCBffo', 'pdkdf2_sha256$secret$24400$zN/iEuxuzZx/DpJIKzgHCpUYl81EquooqMCzCBtnDMaNk17WsplOh2NByWZVkBokHJM3UTXo0tSNAyhD+tmT7A==');
INSERT INTO users (username, password) VALUES ('yWrybYApCmogMwyG', 'pdkdf2_sha256$secret$24400$2a+9sH9h5BvV6ep4C8LpDSDx1IZG9TxQ1DwpLh7DyErqxnC0w4DaqoaRRn9WKABo98+QNF/Ui3ZB6bzUW+z8sg==');
INSERT INTO users (username, password) VALUES ('ThOVswRlCsrMYnvb', 'pdkdf2_sha256$secret$24400$+RsInWdq8D40EX1bKlIo4RXIR/lwSO7Y/6XGyayGoeENGTAeKj+MEo+qEyN36ovpHiA75xUskLEueaza3g5+jg==');
INSERT INTO users (username, password) VALUES ('EKrpEfzlepfZkbAn', 'pdkdf2_sha256$secret$24400$/FWDfk6ls1pxaOQKHSEgh+skexbP0QuhDSl3CTDtGnAepWw+QgKgBJ51rfEPXz954egUb8Q7bKhWgFd1RZD0Qg==');
INSERT INTO users (username, password) VALUES ('WIYCqzeJCKNTRcMQ', 'pdkdf2_sha256$secret$24400$iCnEawfkGLEat67fqUHkOsXCHeN88hNtmHOxzI+evM+wqd7yFwVG///Orxk1I0pdfzLfIL0Ar1vcrwv+8g3EUQ==');
INSERT INTO users (username, password) VALUES ('keXxGpSztiTaqaPM', 'pdkdf2_sha256$secret$24400$43tfeAULsAI/Sc3RsHoUh2AvvbsRj8ScqkpwxSu+4kq1amkyyzRQqBPPE5uq+aemT43QdQtDMltTVOx+zvM/xQ==');
INSERT INTO users (username, password) VALUES ('MMBgqzdNnHhUXQDW', 'pdkdf2_sha256$secret$24400$LQSp3F+Fp3faQE14b8JJ1G5OesmExTFU8tDsJKWfwP5r8ZD9bzJgkT4nmwF6iYQ5sozRpbqdpn692FQX7KrmcQ==');
INSERT INTO users (username, password) VALUES ('UwHMmWmBHnBpgIqj', 'pdkdf2_sha256$secret$24400$5Z0mM7gcDeUVynORZ1Vg+1Z/64U3TjQymSMsi1nkIOcblOhxH9EEZumZcKK+BzL/wvf2ihQfQr944Nt6XyONag==');
INSERT INTO users (username, password) VALUES ('sfVWIEZTxMJhDvWL', 'pdkdf2_sha256$secret$24400$OPwrxQdnmh3AAUXjYYv3jnGsJ1c6+r/PzzEavMkrUoLGVfnL382OLDke1suIdr+TFoT/738Jwdamv/Xk1P1rxA==');
INSERT INTO users (username, password) VALUES ('FjnOBqoYYNrMxVcw', 'pdkdf2_sha256$secret$24400$CDrJgGtFVEOO5z9nv7f9dBIghGarn39PYW4POVsjIo6DNm7THP3jYST9WlHIdnqL80xfRuQe1VXX2vICSg5qSA==');
INSERT INTO users (username, password) VALUES ('DaRdjkqTCmdaArJm', 'pdkdf2_sha256$secret$24400$+mrUzOXZ1WVTdLuKvCoxtWihQj5QVxrEMdVBDZCMmZKON5ihGmr+AnZcU/e6BaggV/Ihn7vUBedhAlcWbtLyDA==');
INSERT INTO users (username, password) VALUES ('sxFvbMEkrRPUhiIH', 'pdkdf2_sha256$secret$24400$Y0+0Ftf684EJVMmBX3E7CVUn7hzsqq1+RbP5A/l9V0WYUsSBeP4tuqlxcVwzShnd7alVcbpJfFC10aSal5oDgA==');
INSERT INTO users (username, password) VALUES ('WQnOWsZGULvlupEf', 'pdkdf2_sha256$secret$24400$mWs24ST+Dirp5A0330pZZJ/QQ8Z+rLinhHrRyAH6n6BOkv+AsjrzG10TUXaoHbkCt7UjYd7U0+OcslqcM2TLtA==');
INSERT INTO users (username, password) VALUES ('rcQwPUjLznCSSDjl', 'pdkdf2_sha256$secret$24400$+1Op2gxQUEpGrjT24pRIRrTnHCODEOrXD2gFsDDv7GeDGFk7pfgffpNIFcvNPpUV9ltEigsU5+jI6LPPpfwcpw==');
INSERT INTO users (username, password) VALUES ('gLrRWOJoBhOLEhma', 'pdkdf2_sha256$secret$24400$1NDWolDwtn+AR8hYn08UWPKcS0JBEMic96R0lnm0zWUhHUrFVV/Aa5Ka+1TKpEfKOJJFGSXUth2WyD8Lp/naNg==');
INSERT INTO users (username, password) VALUES ('flag{flag4}_____', 'flag{flag3}__$AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==');
INSERT INTO users (username, password) VALUES ('uerGNenEPXQuzxTY', 'pdkdf2_sha256$secret$24400$L6hxdNpttVNuHWampWQ+Dr0PgC+yq+xQHMozpFEPTLeqOkvqoBJdB45yv5uVBwQ3p3n+A+H1JIOW8U6U+DKaSg==');
INSERT INTO users (username, password) VALUES ('LVxmpzBLEAFoipuD', 'pdkdf2_sha256$secret$24400$BNW8b5sDf7MUILsbM8AtJ9/VGdUVJpYV9oYBJeQ+qHn1tbEMNHhNtAR0W5drskL6bSe4U9wAscQPdHxaLmT2Bw==');
INSERT INTO users (username, password) VALUES ('dcSjvJSJlCRNqYeO', 'pdkdf2_sha256$secret$24400$9mjxuTzo4JW77+4LMnc3fx+kd+spdE6TJ284GSgDkEUsMfoTtzg+A0PqVy6etVlURfHI7SI5wMXqOWWOhHK28w==');
INSERT INTO users (username, password) VALUES ('mAwXYUFWSbzImUXI', 'pdkdf2_sha256$secret$24400$upOT41nJluKnzo/0NqJ9jhOpDacmXGdnNeSS9atGny3pSSKdtiBHPwAIlKaD4sla7sG+ABzD6uKTSwsebtE+lQ==');
INSERT INTO users (username, password) VALUES ('PcBewGnhSYJkTKxx', 'pdkdf2_sha256$secret$24400$m1QQKs4LBiXJwsIZ+KEIus9UHzYGauSs5eQZtYnGtQiul5JIDcRzCYsUWm2Wnj47AUbi/cfcXtRKfDLFYBltXQ==');
INSERT INTO users (username, password) VALUES ('eSrQvgkxpJTcqcRZ', 'pdkdf2_sha256$secret$24400$uiJdSjr6SSmPZ6hicXp1irAHiPEpCMUDMNn+G6bzyQmGEORYzZMyVWSXnFVzOEnZxIhVtEDxgQByQgypt6Oeww==');
INSERT INTO users (username, password) VALUES ('NfaXAIoBDZibLZNj', 'pdkdf2_sha256$secret$24400$dHzND8EhkSdMqkl5yncxoL2Zm8WOB5LPkXSHuc0cShRXcDKApFaI4JFg3veb+qYzksTHSJsYmj0j5bA2tqI89w==');
INSERT INTO users (username, password) VALUES ('kkROHWnDhruxbKve', 'pdkdf2_sha256$secret$24400$0P4Si5wE11QNt+Hm9zQDZPQpItPcAzXrkUNZPza++oJb7b4jj2zVWhdNq+uDRhZTjwuWKQLKVVfvdu25QhadBg==');
INSERT INTO users (username, password) VALUES ('QAkCJtMGuSQcoauh', 'pdkdf2_sha256$secret$24400$n6z0arL4tyaoaebqUcKdMcwbIbD5iG8DQjZm5KbOyhXX+Wuru3NpLUe/IX5SnMldhjXNJg2MxCuoAgBxqHgkfg==');
INSERT INTO users (username, password) VALUES ('funakimXacvXVvtD', 'pdkdf2_sha256$secret$24400$BF8418d4+W/hmIseJ0zNDHx/drEWLyiAcvOBtMwPqBcVSbOEYVHl4XvrFrV4WUSATjuBcKkjOWOKK2MpeHRS/Q==');
INSERT INTO users (username, password) VALUES ('mBjNYpTHJhOegSHV', 'pdkdf2_sha256$secret$24400$J/3Uo0ikxYLkfQycM2Zff177+OBLwqRc7+AuCKkJCvmeQ5sY7jiqLg4F7Zv6oRC6hbZ58U7hzRZRJUSjCYyu/Q==');
INSERT INTO users (username, password) VALUES ('VlYpddLyCwWeaHyM', 'pdkdf2_sha256$secret$24400$8W3HpmjJs2XS+MRpog530wzWNlYxedwAPBkT7F+xPH8an1+0NDMaXZg2LAOOJIfArzxaihVckO9rq/KmpU74kw==');
INSERT INTO users (username, password) VALUES ('aPJaEfERyEFYsOtl', 'pdkdf2_sha256$secret$24400$I9iv4d/4qTQJp22cm1RCYg4iyThSd2s4DC/4rkkfKOBbwk91iVNifJrLCFK15/+mF/E1tTuUFRM+ncZTrkJeEQ==');
INSERT INTO users (username, password) VALUES ('MGrRFeiZhGtgNqFs', 'pdkdf2_sha256$secret$24400$+Y55NBNH+b0n1LQfw+CvUulfUcKOQYx1bhcKjNorHuqt4KFusv1Vo+WaFxOeuIDERrKHH7ZJYE/Yma/eBYgKTQ==');
INSERT INTO users (username, password) VALUES ('RweLSCQPQnGDqnhD', 'pdkdf2_sha256$secret$24400$KOEGehdf+1sMQ3CKu34PNSj1O/VwtE2dv/5ENk6Mq2kZKHnc+T4eH8e6EBsR1bOo/8Y7oSecLHcgZ/tvdPpg4w==');
INSERT INTO users (username, password) VALUES ('kjrQEpfZrVUJNpKK', 'pdkdf2_sha256$secret$24400$XJRban/OYryQGUwIZDFuaAi7YXMOV2kSdw62tFG0G6DKbfPcmH6P4x8Te7/ftjsmQ2CYiSgO0ofS3xo1B30gig==');
INSERT INTO users (username, password) VALUES ('XDzPSdWdkbsxOFSf', 'pdkdf2_sha256$secret$24400$ScVkn9aLkHEVtRwTwyCFhdWOQpZIuypM4yMEH9yQJxyZJlN7nyrXawAax3L15pB/g9yX9gduKiW581MoyhzdGw==');
INSERT INTO users (username, password) VALUES ('QLjWNtiXMXkwbrCx', 'pdkdf2_sha256$secret$24400$AkyCSZ03AojpLPcpkDtv2hZfuSGy9rL8o3PzTs2B68KXqvFu8uvbpDQ87Jg2ff4FwRLr6DfpuuyKg4S556yfYA==');
INSERT INTO users (username, password) VALUES ('gBsFnGbViocJvRvP', 'pdkdf2_sha256$secret$24400$yYal2dgxEcd8hoTzd1dofhCxyHRYs6nHXFBA2l+hkTYd5r/n6Vh392SfayhIeqlu8cYOjqpcxEaYwVCQOW9JPw==');
INSERT INTO users (username, password) VALUES ('tPbWAcYqPQmfTRiR', 'pdkdf2_sha256$secret$24400$zZEsf5HRGGpgjJ9tLyri71knglT0YcuUlPAozwRy9Lnd9ZaWMgN9G0knVWLJtfWGUZXH+EfXL59CqbjgBayNyA==');
INSERT INTO users (username, password) VALUES ('azAvRODPhdJmwhpU', 'pdkdf2_sha256$secret$24400$go88seLtp9GOVsXanOQWiDT65ibun2NtAxrCuFPLeFOQPhtO9fhj1RWYVrCsIZZs+JyVV1UdTRkQj5C3vGCYsQ==');
INSERT INTO users (username, password) VALUES ('LkHiREMfcGlJMGfq', 'pdkdf2_sha256$secret$24400$DiVfxp4pQlU0c0lEn9jSkXV9Zo4w/V9eD1yx/7BD5n8oPCxZX+Ze45nJGnZGI6ct3WW36A5E6XlsJ8aWZhxCiQ==');
INSERT INTO users (username, password) VALUES ('rFhOPZoZLHVKJizn', 'pdkdf2_sha256$secret$24400$obUac75K4kmourmgfBm+uJv4mqYG2wDvFUm+xRhvIxluTdxzFjGcjqtfjfLDOcwvR0QgwU+y/6B3HS87mLt27g==');
INSERT INTO users (username, password) VALUES ('gumpSIeqgbDENCHz', 'pdkdf2_sha256$secret$24400$OOsD8IMdXDqoAG1JfgexIHrhe32a4hVQ7XvuLq1m7U+pPjRBKkLJ1uJGNKBU8s97ZquiVc6xsYUaJfin+HGGZQ==');
INSERT INTO users (username, password) VALUES ('uxZHlQbLcQpSAUEF', 'pdkdf2_sha256$secret$24400$AmT/CzCQ9agnug4adov99VLNdSnMfxNE/SNSyysPcbRknZpt3ejWyRExnoxYRb53xJXl9b5dS1FBYp5gq2j3rg==');
INSERT INTO users (username, password) VALUES ('tJoEyyGVpcjlSGTB', 'pdkdf2_sha256$secret$24400$w0IfBw/81kOwsxUU/9lx9qTTy3U+JjVZbbl8yfSrNaiG7/07HUM6WaNsSyvB0e8XqcT0MVg+3EAcUleNZeHY3w==');
INSERT INTO users (username, password) VALUES ('HRHVkzOxNrTGYQxq', 'pdkdf2_sha256$secret$24400$t4N73+MvmvFUFgt2dK6yhL1aKKhCzNMSZRGXCOsbUvCbFIbqtFTQYbHTaqoJjmvu1gIrdkJOBZy1E4857rvZVQ==');
INSERT INTO users (username, password) VALUES ('TbjDMOthxHXcNfmC', 'pdkdf2_sha256$secret$24400$e3ky/Azl00PMDTl1CywBZiwaWP2KK9op+0hUoiQX21n/yHP7uZXpBttbWANSQq2UDLasGUSITvjvnBxT6047+g==');
INSERT INTO users (username, password) VALUES ('bXIzzYHORAusCZMP', 'pdkdf2_sha256$secret$24400$Chb7kACf2NeeIBGLhYTJeJo3/A3j4Qe4sISk3a+a6liSpSMT+B2eTZ66638hI4Rhj0o57kd+A60Vy3UmY7Rzpg==');
INSERT INTO users (username, password) VALUES ('hEWbVpaPNQIZCSUK', 'pdkdf2_sha256$secret$24400$f2cjeMDH9EnECGuLNv5vGSuDVuz8z3VRDDVfiwwhq/WvON8tuVxhRQcWCmIqlksEoCZOg7rtD7OGFBvm0AlXBw==');
INSERT INTO users (username, password) VALUES ('ORyfzrSUFCSnvsZe', 'pdkdf2_sha256$secret$24400$3c+NEePStBSgzLA5x9fGs+Cgkc0L00QuY2MyZOCT6PjkllBt8f6SPM7YQZFDg9EAqvYe+w9kcvavgR0vI0lqNA==');
INSERT INTO users (username, password) VALUES ('BOUrbiuQNWlqQnMg', 'pdkdf2_sha256$secret$24400$Yq1K2uXCPwkEkN6gFq1tiYibXnHA21W4HClSkoXvyjwHKlqbkmluFBnKXsMXOqgesyM+WvcITk/4QTazSCKGHA==');
INSERT INTO users (username, password) VALUES ('iNiseaAsOZBXIQQi', 'pdkdf2_sha256$secret$24400$sUgoxVcK7M1X6HLgWSy8OO8CYtTqxfrwkavDT1ITKDEqo3qMr+C8nwgp2mNJYKZ1ivOgsh/V40s4VHdT0sL36A==');
INSERT INTO users (username, password) VALUES ('SAGGQxAMCjmsQpbh', 'pdkdf2_sha256$secret$24400$ywu3FgRsRFxdVhry6PrWg68Yxx1p1VAk2G/+cXc7BhLv/W2fc5VfdJLkIVPuzNxb8qteX+ZnfY4AxG9mCwOyHA==');
INSERT INTO users (username, password) VALUES ('adXImfWmGpelCqTN', 'pdkdf2_sha256$secret$24400$0M988D8b3QuZvHPL0RrU56/fHYy5c4m4+ppUrZURdJd1ayeS2Lkhm2I5pOl30vUd6ueD6jFQ2tcVGm0KiCQzAg==');
INSERT INTO users (username, password) VALUES ('PPvrjrAGdXvDieaw', 'pdkdf2_sha256$secret$24400$lS/52wofD3aGvCenpc9ZBiHIshysxrBwCeB2VOCrVa0MXk+88sCZqSsekTlI3/jrBKpboAkCgCh+joh0+9hzkA==');
INSERT INTO users (username, password) VALUES ('WCPiztygtFfDyZSJ', 'pdkdf2_sha256$secret$24400$h4Aq+n3kqzIXoI9j1r1m8f7/f6ImSlt+Z0tiPIFUynkhSTYZigMtATqRofeRwim4vLAsiJeoZhe6OUdY1UVOew==');
INSERT INTO users (username, password) VALUES ('ITmgqQWHDsxvYHLr', 'pdkdf2_sha256$secret$24400$Fl9Jz4sEz+mSxrrKpp7gGknqhgixbZqcBfcpxsAe2e1VDvw0uptyoswJ37AnNM92gVRH/ZcKEDpZ3rULizzACg==');
INSERT INTO users (username, password) VALUES ('lHhdDctAIywmjAdF', 'pdkdf2_sha256$secret$24400$4RvFP5bcjEXOQWeBguEyYiSKI5QJWLLlql8x+mT7R2XwyycLT3mpxfLL6FYvBtkZCITl1Lnq8Ol3YTq2kvlGYg==');
INSERT INTO users (username, password) VALUES ('qJGJHwCUvQEDbKCi', 'pdkdf2_sha256$secret$24400$B97mBFDqoUX4wMAVeNTMx7ZIXlAt7IzfIK8BWTfcfy++3X/RvKJT70wOYamtSKc6oRd3V4FlkDHcRVEOClfQJA==');
INSERT INTO users (username, password) VALUES ('HDOJtRMgFvjTZwTD', 'pdkdf2_sha256$secret$24400$O7GnvasmfoxdZlnFJLCuOv6v0ZIkreDz4N4LDBMjHdtJ3fZfFAfY/0SBulGVnicS0Kccz0X2cZVDyTzJLdMNNQ==');
INSERT INTO users (username, password) VALUES ('VTLHPfjrrTTGVrOy', 'pdkdf2_sha256$secret$24400$U9JBk0Us05wZcxkKRmCd538ZPqSBWd9QGAQ0rINyZQLOA8U7jNk/Ks4OUtxS/KjNFyRM49xyo/Zp5K1lX+PVzw==');
INSERT INTO users (username, password) VALUES ('GpYWMExEPYTqcZlB', 'pdkdf2_sha256$secret$24400$NbPu55/1O3UyS1G23Mrts4P/mhqMv+sg4S4cQvU6D1Uhh3NBLQktpOAyBwfUT5Q2uBonORddH/EzDCpSb5Gjyg==');
INSERT INTO users (username, password) VALUES ('SffvkQsgXMnkHBaH', 'pdkdf2_sha256$secret$24400$X7g4GmPLz5iJ8gLkjAfCgjXncVBLB5Fed69BePNACATN9YICKX/qGPE9A3C0sDfXYdWWr6m7RdYSyMLomWDUrg==');




INSERT INTO flag (flag) VALUES ('vulnim{flag2}');



-- Sample Script from https://www.sqltutorial.org/sql-sample-database/
CREATE TABLE regions (
	region_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	region_name text NOT NULL
);

CREATE TABLE countries (
	country_id text NOT NULL,
	country_name text NOT NULL,
	region_id INTEGER NOT NULL,
	PRIMARY KEY (country_id ASC),
	FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE locations (
	location_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	street_address text,
	postal_code text,
	city text NOT NULL,
	state_province text,
	country_id INTEGER NOT NULL,
	FOREIGN KEY (country_id) REFERENCES countries (country_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE departments (
	department_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	department_name text NOT NULL,
	location_id INTEGER NOT NULL,
	FOREIGN KEY (location_id) REFERENCES locations (location_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE jobs (
	job_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	job_title text NOT NULL,
	min_salary double NOT NULL,
	max_salary double NOT NULL
);

CREATE TABLE employees (
	employee_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	first_name text,
	last_name text NOT NULL,
	email text NOT NULL,
	phone_number text,
	hire_date text NOT NULL,
	job_id INTEGER NOT NULL,
	salary double NOT NULL,
	manager_id INTEGER,
	department_id INTEGER NOT NULL,
	FOREIGN KEY (job_id) REFERENCES jobs (job_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (department_id) REFERENCES departments (department_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (manager_id) REFERENCES employees (employee_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE dependents (
	dependent_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	first_name text NOT NULL,
	last_name text NOT NULL,
	relationship text NOT NULL,
	employee_id INTEGER NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES employees (employee_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/*Data for the table regions */

INSERT INTO regions(region_id,region_name) VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name) VALUES (2,'Americas');
INSERT INTO regions(region_id,region_name) VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name) VALUES (4,'Middle East and Africa');


/*Data for the table countries */
INSERT INTO countries(country_id,country_name,region_id) VALUES ('AR','Argentina',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('DE','Germany',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('DK','Denmark',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('EG','Egypt',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('FR','France',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('HK','HongKong',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IL','Israel',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IN','India',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('IT','Italy',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('JP','Japan',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('KW','Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('MX','Mexico',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('NG','Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('NL','Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('SG','Singapore',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('UK','United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('US','United States of America',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('ZM','Zambia',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('ZW','Zimbabwe',4);

/*Data for the table locations */
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');


/*Data for the table jobs */

INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (1,'Public Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (4,'President',20000.00,40000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (5,'Administration Vice President',15000.00,30000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (7,'Finance Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (8,'Human Resources Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (12,'Public Relations Representative',4500.00,10500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (15,'Sales Manager',10000.00,20000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (16,'Sales Representative',6000.00,12000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (18,'Stock Clerk',2000.00,5000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES (19,'Stock Manager',5500.00,8500.00);


/*Data for the table departments */

INSERT INTO departments(department_id,department_name,location_id) VALUES (1,'Administration',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (2,'Marketing',1800);
INSERT INTO departments(department_id,department_name,location_id) VALUES (3,'Purchasing',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (4,'Human Resources',2400);
INSERT INTO departments(department_id,department_name,location_id) VALUES (5,'Shipping',1500);
INSERT INTO departments(department_id,department_name,location_id) VALUES (6,'IT',1400);
INSERT INTO departments(department_id,department_name,location_id) VALUES (7,'Public Relations',2700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (8,'Sales',2500);
INSERT INTO departments(department_id,department_name,location_id) VALUES (9,'Executive',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (10,'Finance',1700);
INSERT INTO departments(department_id,department_name,location_id) VALUES (11,'Accounting',1700);



/*Data for the table employees */

INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21',5,17000.00,100,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (102,'Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,100,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,12000.00,101,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,6900.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,11000.00,100,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18',13,3100.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24',13,2900.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24',13,2800.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15',13,2600.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566','1999-08-10',13,2500.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,8000.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (121,'Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,8200.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,7900.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,6500.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28',18,2700.00,120,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01',15,14000.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05',15,13500.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24',16,8600.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23',16,8400.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24',16,7000.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04',16,6200.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04',17,4000.00,123,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03',17,3900.00,123,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17',3,4400.00,101,1);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,13000.00,100,2);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,6000.00,201,2);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,6500.00,101,4);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,10000.00,101,7);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,12000.00,101,11);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06-07',1,8300.00,205,11);


/*Data for the table dependents */

INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (1,'Penelope','Gietz','Child',206);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (2,'Nick','Higgins','Child',205);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (3,'Ed','Whalen','Child',200);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (4,'Jennifer','King','Child',100);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (5,'Johnny','Kochhar','Child',101);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (6,'Bette','De Haan','Child',102);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (7,'Grace','Faviet','Child',109);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (8,'Matthew','Chen','Child',110);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (9,'Joe','Sciarra','Child',111);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (10,'Christian','Urman','Child',112);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (11,'Zero','Popp','Child',113);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (12,'Karl','Greenberg','Child',108);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (13,'Uma','Mavris','Child',203);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (14,'Vivien','Hunold','Child',103);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (15,'Cuba','Ernst','Child',104);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (16,'Fred','Austin','Child',105);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (17,'Helen','Pataballa','Child',106);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (18,'Dan','Lorentz','Child',107);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (19,'Bob','Hartstein','Child',201);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (20,'Lucille','Fay','Child',202);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (21,'Kirsten','Baer','Child',204);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (22,'Elvis','Khoo','Child',115);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (23,'Sandra','Baida','Child',116);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (24,'Cameron','Tobias','Child',117);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (25,'Kevin','Himuro','Child',118);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (26,'Rip','Colmenares','Child',119);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (27,'Julia','Raphaely','Child',114);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (28,'Woody','Russell','Child',145);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (29,'Alec','Partners','Child',146);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) VALUES (30,'Sandra','Taylor','Child',176);