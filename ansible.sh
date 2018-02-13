#!/bin/bash

if ! [`which ansible`]; then
    sudo yum install -y epel-release
    sudo yum install -y ansible
fi

ansible-playbook -vv -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml
