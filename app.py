from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to my CI/CD pipeline project!"

if __name__ == '__main__':
    app.run(debug=True)