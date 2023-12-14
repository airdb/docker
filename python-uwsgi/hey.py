from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    user_agent = request.headers.get('User-Agent')
    #print(request.remote_addr, user_agent)
    #return f'IP: {request.remote_addr} \n User Agent is: {user_agent}'

    data = {
        "ip": request.remote_addr,
        "useragent": user_agent,
    }
    return jsonify(data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
