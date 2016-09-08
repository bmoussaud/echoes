from flask import Flask
from flask import render_template
import os
import socket

app = Flask(__name__)
app.debug = True


@app.route('/')
def dump_environment():
    hostname = os.getenv('HOSTNAME', None)
    if hostname is None:
        hostname = socket.gethostname()

    hosts = [line[:-1] for line in open('/etc/hosts', 'r').readlines()]
    return render_template('environment.html', hostname=hostname, environ=os.environ, hosts=hosts)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
