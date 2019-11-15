#Simple WSGI Web Applicaiton

from wsgiref.simple_server import make_server
import os

GREETING = "Hello, world!From Version: " + os.environ["APP_VERSION"] 

def hello(environ, start_response):
	start_response('200 OK', [('Content-Type', 'text/plain')])
	return [GREETING.encode()]

make_server('0.0.0.0', 9000, hello).serve_forever()
