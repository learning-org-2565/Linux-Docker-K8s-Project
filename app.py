from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return """
    <h1>Hello from My Custom Docker Image!</h1>
    <p>This is running inside a container I built myself!</p>
    <p>Built by: Abhi</p>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
