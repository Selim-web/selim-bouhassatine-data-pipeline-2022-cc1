#!/bin/bash
sudo yum install -y python
sudo yum install -y pip 
sudo pip install boto3


scp /Users/selimbouhassatine/selim-bouhassatine-data-pipeline-2022-cc1/question 7/terraform/stock.py ec2-user@ec2-13-50-107-134.eu-north-1.compute.amazonaws.com:

python stock.py


