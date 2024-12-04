#!/bin/bash
# staging exercise with jenkins
cleanup() {
    echo "Cleaning up ..."
    deactivate
    rm -rf /home/devasc/Documents/Git_testing/deployment/Flaskapp
    rm -rf /home/devasc/Documents/Git_testing/deployment/flask_venv
    echo "Application folder has been removed"
}
trap cleanup EXIT
python3 -m venv flask_venv
source flask_venv/bin/activate
git clone https://github.com/Rickyyar/Flaskapp.git
cd Flaskapp/
pip install -r requirements.txt
python3 sample_app.py
