#!/bin/bash

echo "Creating Flask MVC app..."

#### Main app directory ####
mkdir app
cd app
touch __init__.py
echo "Made main __init__.py file. You must add all of the 'from .controllers...' and 'app.register_blueprint...' lines to this file."

echo "import configparser
import secrets

from flask import Flask
from flask_sqlalchemy import SQLAlchemy

__author__ = 'David Parker'

db = SQLAlchemy()

def create_app():
    app = Flask(__name__)
    app.secret_key = secrets.token_urlsafe(16)
    config = configparser.ConfigParser()
    config.read('config.ini')

    try:
        app.config['SQLALCHEMY_DATABASE_URI'] = config.get('database', 'uri')
        db.init_app(app)
    except:
        print('Error connecting to database.')

    # TODO Must add each new blueprint here
    from .controllers.home_controller import home_bp
    app.register_blueprint(home_bp)

    return app
" >> __init__.py

#### Controllers ####
mkdir controllers
touch controllers/__init__.py
touch controllers/home_controller.py
echo "from flask import Blueprint, render_template

home_bp = Blueprint('home_bp', __name__)

@home_bp.route('/')
def index():
    return render_template('home/index.html')" >> controllers/home_controller.py

#### Models ####
mkdir models
touch models/__init__.py

#### Views (Templates) ####
mkdir templates
touch templates/base.html
echo "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <link rel='stylesheet' type='text/css' href='{{ url_for('static', filename='style.css') }}'>
    <title>{% block title %}{% endblock %}</title>
</head>
<body>
    <nav>
        <ul>
            <li><a href='{{ url_for('home_bp.index') }}'>Home</a></li>
        </ul>
    </nav>
    <main>
        {% block content %}{% endblock %}
    </main>
</body>
</html>" >> templates/base.html

#### Home View ####
mkdir templates/home
touch templates/home/index.html
echo "{% extends 'base.html' %}

{% block title %}Home{% endblock %}

{% block content %}
    <h1>Home</h1>
{% endblock %}" >> templates/home/index.html

mkdir static
touch static/style.css
echo "/* Style the navigation bar */
nav {
    background-color: #0a0617;
    overflow: hidden;
}
nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: space-between;
}
nav li {
    float: left;
}
nav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
nav li a:hover {
    background-color: #918c8c68;
}

/* Style the body content */
body {
    background-color: #0d0c0f;
    color: #ded2ed;
}

/* Style the main content */
main {
    margin-top: 20px;
    margin-left: 20px;
    margin-right: 20px;
    background-color: #5b535300;
    color: #9890b4;
}

/* link style */
a {
    color: #d3dc57;
}" >> static/style.css

#### Done with app directory ####
cd ..


#### Data ####
mkdir data


#### run.py ####
touch run.py
echo "from app import create_app

app = create_app()

if __name__ == '__main__':
    app.run()" >> run.py


#### config.ini ####
touch config.ini
echo "[DEFAULT]
DEBUG = True
[database]
uri = postgresql://USERNAME:PASSWORD@HOST:PORT/DATABASE_NAME" >> config.ini


#### .gitignore ####
touch .gitignore
echo "venv
*.pyc
__pycache__" >> .gitignore


#### Virutal Environment ####
python3 -m venv venv
source venv/bin/activate
python3 -m pip install --upgrade pip
pip install -U Flask
pip install -U Flask-SQLAlchemy
python -m pip freeze > requirements.txt

echo "Done! Now run the following commands to get started:
source venv/bin/activate
flask --app run run"
