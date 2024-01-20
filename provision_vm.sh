#!/bin/bash

VM_NAME=$1
VM_USERNAME=taba1uga

# Prompt for sudo password
read -s -p "Password: " ANSIBLE_BECOME_PASSWORD

ansible-playbook -i $VM_NAME.lab, -u taba1uga --extra-vars="ansible_become_pass=$ANSIBLE_BECOME_PASSWORD" provision-rssh.yaml

if [ $? -ne 0 ]; then
    >&2 echo "ERROR ERROR ERROR"
    >&2 echo "Provisioning rssh failed!!!"
    >&2 echo "ERROR ERROR ERROR"
    exit 1
fi

