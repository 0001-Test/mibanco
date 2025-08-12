from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/hola', methods=['GET'])
def hola_mibanco():
    return jsonify({'mensaje': 'Hola MiBanco'})


@app.route('/health', methods=['GET'])
def health():
    return jsonify(
        {
            'status': 'UP',
            'checks': []
        }
    )
@app.route('/healthz', methods=['GET'])
def health():
    return jsonify(
        {
            'status': 'UP',
            'checks': []
        }
    )

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
