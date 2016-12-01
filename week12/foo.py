#!flask/bin/python
from flask import Flask

app = Flask('foo')

@app.route('/')
def index():
    return "Hello, World!"

if __name__ == "__main__":
    app.run(debug=True)
