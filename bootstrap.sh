#!/bin/bash
### Purpose ###
# Get the box ready to run ansible. This is meant to be slim.
# It shall not do anything other than getting ready for Ansible.
# It shall be idempontent.
### End Purpose ###

sudo apt-get update

# We'll make a virtualenv for ansible to install this provisioner.
sudo apt-get install python3-venv python3-apt -y

# Make the venv for ansible. Give access to system-site-packages for apt.
python3 -m venv /tmp/provision-venv --system-site-packages

# Get into the venv.
source /tmp/provision-venv/bin/activate

# Install ansible for usage
# We are okay with pulling the latest 2.9 because we will be running this pipeline
# On a weekly basis to make sure it still works with 2.9.
# It'll be an explicit decision to upgrade to a new major version
pip install ansible==2.9.*

# Everything else at this point is ansible.
ansible-playbook ansible/playbooks/provision.yml -K
