#! /bin/bash
yum update -y
yum install python3 -y
pip3 install flask
cd /home/ec2-user
wget -P templates https://raw.githubusercontent.com/XXXXXXXXX/my-projects/main/aws/projects/Project-001-Roman-Numerals-Converter/templates/index.html
wget -P templates https://raw.githubusercontent.com/alparslanu6347/my-projects/main/Roman-Numerals-Converter-Application/templates/result.html
wget https://raw.githubusercontent.com/alparslanu6347/my-projects/main/Roman-Numerals-Converter-Application/app.py
python3 app.py
