from flask import Flask, redirect, request, render_template
from counter import Counter

app = Flask(__name__)
cnt = Counter()

@app.route("/")
def index():
    return render_template("index.html", value=cnt.value)

@app.route("/increment", methods=["POST"])
def increment():
    cnt.increase()
    return redirect("/")

@app.route("/reset", methods=["POST"])
def reset():
    cnt.reset()
    return redirect("/")

@app.route("/set", methods=["POST"])
def set_counter():
    try:
        value = int(request.form["value"])
        cnt.set_value(value)
    except ValueError:
        print("Invalid value provided for counter.")

    return redirect("/")
