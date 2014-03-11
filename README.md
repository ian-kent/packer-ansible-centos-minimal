CentOS 6.5 minimal with Ansible
===============================

Packer build for CentOS 6.5 minimal with Ansible install.

Current box file is available on DropBox:

    https://dl.dropboxusercontent.com/u/134749023/CentOS/centos65-ansible.box

## Vagrant quickstart

Use Vagrant on Windows to provision using Ansible:

    vagrant init ansible https://dl.dropboxusercontent.com/u/134749023/CentOS/centos65-ansible.box
    vagrant up

Then run ansible commands using SSH:

    vagrant ssh -c ansible -- -n

(The ```-- -n``` at the end prevents Windows related errors)

