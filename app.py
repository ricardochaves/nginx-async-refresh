from flask import Flask
app = Flask(__name__)


@app.route("/")
def hello():

    from flask import jsonify
    from time import sleep
    from datetime import datetime

    sleep(3)

    result = jsonify({"TIME": str(datetime.now())})
    result.headers["Cache-Control"] = "max-age=10"

    return result
