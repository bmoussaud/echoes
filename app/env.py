from flask import Flask
from flask import render_template
import os

app = Flask(__name__)
app.debug = True

@app.route('/')
def hello_world():
    return 'Hello World!'


@app.route('/env/')
def dump_environment():
    return render_template('environment.html', environ=os.environ)

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')


