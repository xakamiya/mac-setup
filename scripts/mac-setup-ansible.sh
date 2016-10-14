#!/bin/sh

cd $(dirname ${BASH_SOURCE:-$0})
cd ../

HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook ansible/mac_setup.yml \
    -i hosts \
    -vv
