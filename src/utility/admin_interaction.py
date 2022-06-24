import requests
# from requests_html import HTMLSession
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

# get cookie
s = requests.Session()
r = s.post('http://127.0.0.1:8080/auth/login', 
    data={'username': 'admin', 'password': 'admin'}, 
    allow_redirects=False)
cookie = r.cookies["session"]
#print(cookie)

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument('--no-sandbox')
session = webdriver.Chrome('/usr/lib/chromium/chromedriver', options=chrome_options)
session.set_page_load_timeout(8)
try:
    session.get('http://127.0.0.1:8080/')
    session.add_cookie({'name': 'session', 'value': cookie})
    session.get('http://127.0.0.1:8080/comments/')
    session.quit()
except:
    session.quit()



# trigger XSS
# session = HTMLSession()
# r = session.post('http://127.0.0.1:80/auth/login', 
#     data={'username': 'admin', 'password': 'admin'}, 
#     allow_redirects=False)
# print(session.cookies)
# r = session.get('http://127.0.0.1:80/comments/')
# print(r.html)
# r.html.render()