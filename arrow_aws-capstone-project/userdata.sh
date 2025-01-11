#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="**************************"    # write your TOKEN  (for private repository)
git clone https://$TOKEN@github.com/alparslanu6347/arrow_aws-capstone-project.git  # change your repository's name
cd /home/ubuntu/arrow_aws-capstone-project    # change your repository's name
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/arrow_aws-capstone-project/src    # change your repository's name
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80