import os

from flask import Flask
import tushare as ts

app = Flask(__name__)


@app.route('/')
def hello():
    return 'Hello world!'


@app.route('/blotter/<symbol>')
def blotterDetail(symbol=None):
    print('symbole = ', symbol)
    df = ts.get_realtime_quotes(symbol)
    json = df.loc[0].to_json()
    print(json)
    return json


if __name__ == '__main__':
    app.run(host='0.0.0.0')
