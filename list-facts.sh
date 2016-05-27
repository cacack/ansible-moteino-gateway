#!/usr/bin/env bash

allargs=( $@ )
len=${#allargs[@]}
hostname=${allargs[$len-1]}
args=${allargs[@]:0:$len-1}

export ANSIBLE_HOST_KEY_CHECKING=false
ansible -u root --ask-pass --inventory="${hostname}," all  -m setup
