#!/bin/bash
# staging exercise with jenkins
cleanup() {
    echo "Cleaning up ..."
    deactivate
    rm -rf /home/devasc/Documents/Git_testing/deployment/Flaskapp
    echo "Application folder has been removed"
}
python3 -m venv Flaskapp
source flask_venv/bin/activated
git clone https://github.com/Rickyyar/Flaskapp.git
pip install -r requirements.txt
python3 sample_app.py
