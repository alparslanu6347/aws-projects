#! /bin/bash
yum update -y
yum install python3 -y
pip3 install flask
yum install git -y
cd /home/ec2-user
wget -P templates https://raw.githubusercontent.com/alparslanu6347/my-projects/main/Roman-Numerals-Converter/templates/index.html
wget -P templates https://raw.githubusercontent.com/alparslanu6347/my-projects/main/Roman-Numerals-Converter/templates/result.html
wget https://raw.githubusercontent.com/alparslanu6347/my-projects/main/Roman-Numerals-Converter/app.py
python3 app.py
