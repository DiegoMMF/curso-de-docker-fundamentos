import json
from flask import Flask
app = Flask(__name__)

@app.route('/getMyInfo')
def getMyInfo():
    value = {
        "name": "Diego",
        "lastname": "Maldini",
        "socialMedia":
        [
            {"linkedin": "DiegoMMF"},
            {"githubUser": "DiegoMMF"}
        ],
    }
    return json.dumps(value)