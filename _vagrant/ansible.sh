#!/usr/bin/env bash
# Simple wrapper to run ansible against Vagrant

DIR="$( cd "$( dirname "$0" )" && pwd )"

export ANSIBLE_HOST_KEY_CHECKING=False  # Don't check known_hosts
ARGS=(
    -i "$DIR/.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory"
    --private-key=~/.vagrant.d/insecure_private_key
    -u vagrant
)

ansible "${ARGS[@]}" "${@}"
