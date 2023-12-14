from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def index():
    user_agent = request.headers.get('User-Agent')
    print(user_agent)
    return f'Your User Agent is: {user_agent}'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
