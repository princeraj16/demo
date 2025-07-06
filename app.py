from flask import Flask
app = Flask(__name__)

@app.route('/name')
def greet():
    return "🚀 Hello from Flask on Red Hat UBI!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

