from flask import Flask
import os

app = Flask(__name__)

# the port randomly assigned and then mapped to port 80 by the Heroku
port = int(os.environ.get("PORT", 5000))

# debug mode
debug = True

@app.route('/')
def hello_world():
    return 'Hello World!'

if __name__ == '__main__':
    app.run(debug=debug, host='0.0.0.0', port=port)