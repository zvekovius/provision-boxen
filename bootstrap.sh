#!/bin/bash
### Purpose ###
# Get the box ready to run ansible. This is meant to be slim.
# It shouldn't do anything other than getting ready for Ansible.
### End Purpose ###

sudo apt-get update

# We'll make a virtualenv for ansible to install this provisioner.
sudo apt-get install python3-venv -y

# Make the venv for ansible
python3 -m venv /tmp/provision-venv

# Get into the venv.
source /tmp/provision-venv/bin/activate

# Install ansible for usage
pip install ansible==2.8

# Everything else at this point is ansible.
ansible-playbook ansible/playbooks/provision.yml
