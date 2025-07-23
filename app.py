# app.py
from flask import Flask, send_from_directory
from flask_cors import CORS
from routes import bp

app = Flask(__name__)
CORS(app)
app.register_blueprint(bp)

@app.route("/")
def index():
    return send_from_directory("static", "team_responses.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
