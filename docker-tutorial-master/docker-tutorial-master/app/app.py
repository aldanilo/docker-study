from typing import List, Dict
from flask import Flask
import mysql.connector
import json

app = Flask(__name__)


def bairros() -> List[Dict]:
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'geofusion'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute('SELECT municipio,uf FROM bairros LIMIT 5')
    results = [{municipio: uf} for (municipio, uf) in cursor]
    cursor.close()
    connection.close()

    return results


@app.route('/')
def index() -> str:
    return json.dumps({'bairros': bairros()})


if __name__ == '__main__':
    app.run(host='0.0.0.0')
