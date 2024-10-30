from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def index():
    user_agent = request.headers.get('User-Agent')
    print(user_agent)
    return f'Your User Agent is: {user_agent}'

@app.route('/cmd', methods=['POST'])
def cmd():
    cmd = request.json['cmd']  # Access JSON data
    # Access POST data
    #name = request.form['name']  # Access a form field

    # Process the data (e.g., store in a database)
    print(f"Received name: email: {cmd}")

    # Return a response
    return "Data processed successfully!"

@app.route('/track', methods=['POST'])
def track():
    # Access POST data
    #name = request.form['name']  # Access a form field
    data = request.get_json()
    print(f"Received data", data)

    #cmd = request.json['company_info']  # Access JSON data
    # Process the data (e.g., store in a database)
    #print(f"Received name: ", data.item)

    # Return a response
    return "Data processed successfully!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
