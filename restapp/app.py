from flask import Flask
import commands

app = Flask(__name__)

host = commands.getstatusoutput('hostname')[1]

@app.route("/")
def hello():
    return "Hello World, from "+host
