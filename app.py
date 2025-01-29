from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello...."


@app.route("/cpu")
def scpu():
    return "App Cpu bound...."

    
@app.route("/mem")
def smem():
    return "App mem bound...."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
