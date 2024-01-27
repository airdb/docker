from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    user_agent = request.headers.get('User-Agent')
    #print(request.remote_addr, user_agent)
    #return f'IP: {request.remote_addr} \n User Agent is: {user_agent}'
    print(dict(request.headers))
    ip = request.headers.get('X-Real-Ip')
    #request.remote_addr,

    data = {
        "ip": ip,
        "headers": dict(request.headers),
        "useragent": user_agent,
    }
    return jsonify(data)


@app.route('/apis/v1/sgw/sec/check', methods=['POST'])
def waf():
    post_body_string = request.get_data(as_text=True)

    # Print the string to the console
    print("Raw POST body:", post_body_string)

    user_agent = request.headers.get('User-Agent')
    #print(request.remote_addr, user_agent)
    #return f'IP: {request.remote_addr} \n User Agent is: {user_agent}'
    print(dict(request.headers))
    ip = request.headers.get('X-Real-Ip')
    #request.remote_addr,

    data = {
        "ip": ip,
        "headers": dict(request.headers),
        "useragent": user_agent,
    }
    return jsonify(data)


@app.route('/cmd', methods=['POST'])
def handle_data():
    post_body_string = request.get_data(as_text=True)

    # Print the string to the console
    print("Raw POST body:", post_body_string)


    cmd = request.json['cmd']  # Access JSON data
    # Access POST data
    # name = request.form['name']  # Access a form field

    # Process the data (e.g., store in a database)
    print(f"Received name: email: {cmd}")

    # Return a response
    return "Data processed successfully!"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
