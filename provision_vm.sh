#!/bin/bash

VM_NAME=$1
VM_USERNAME=taba1uga

ansible-playbook -i $VM_NAME.lab, -u taba1uga provision-rssh.yaml 

if [ $? -ne 0 ]; then
    >&2 echo "ERROR ERROR ERROR"
    >&2 echo "Provisioning rssh failed!!!"
    >&2 echo "ERROR ERROR ERROR"
    exit 1
fi

