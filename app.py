import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    # Lettura variabili d'ambiente
    message = os.environ.get('message', 'John Doe')
    bgcolor = os.environ.get('bgcolor', 'lightgray')

    return render_template('./index.html', message=message, bgcolor=bgcolor)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5555)
