from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/hola', methods=['GET'])
def hola_mibanco():
    return jsonify({'mensaje': 'Hola MiBanco'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
