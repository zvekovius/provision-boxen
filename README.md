# Provision Boxen
A repository meant to take an Ubuntu image from fresh to usable pretty quick.

# Getting Started
`cd /tmp/`

`sudo apt install git`

`git clone https://github.com/zvekovius/provision-boxen`

`cd provision-boxen/ansible`

`cp variables.yml.template variables.yml`

At this point, you'll need to edit variables.yml and fill in what you desire. This requires a text editor. You can install neovim/vim or just use nano.

Once variables are filled in:

`cd /tmp/provision-boxen`

`./bootstraph.sh`

You should then have a boxen restarted ready for usage.
