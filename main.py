import os
from flask import Flask

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def run():
    os.system('git pull')
    os.system('jekyll build')
    return 'Success'

app.run(debug=False, host='0.0.0.0')
