#!/bin/bash
# staging exercise with jenkins
python3 -m venv Flaskapp
source flask_venv/bin/activated
git clone https://github.com/Rickyyar/Flaskapp.git
pip install -r requirements.txt
python3 sample_app.py
deactivate
cd ..
rm -rf Flaskapp 
cd ..
cd
