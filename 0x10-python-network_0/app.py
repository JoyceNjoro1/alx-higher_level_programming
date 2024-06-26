from http.server import BaseHTTPRequestHandler, HTTPServer

class MyServer(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/plain')
        self.end_headers()
        self.wfile.write(b'Hello, World!')

def run():
    print('Starting server...')
    server_address = ('', 5000)
    httpd = HTTPServer(server_address, MyServer)
    print('Server is running...')
    httpd.serve_forever()

if __name__ == '__main__':
    run()

