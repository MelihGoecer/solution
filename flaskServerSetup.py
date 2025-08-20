from flask import Flask
import socket
setup = Flask(__name__)
@setup.route('/test', methods=['GET'])
def print_hostname():
	hostname = socket.gethostname()
	return f"<h1>{hostname}</h1>"

if __name__ == "__main__":
	setup.run(host="localhost", port=8001)
