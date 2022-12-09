#!/bin/bash

URL=$1
FILE=${URL##*/}

# Download and execuite ansible task
echo localhost ansible_connection=local | sudo tee hosts > /dev/null
curl ${URL} -o ${FILE}
sudo ansible-playbook -i hosts ${FILE}
