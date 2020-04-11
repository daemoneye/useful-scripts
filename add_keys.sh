#!/usr/bin/env bash

ssh-add /home/daemoneye/.ssh/ssh
ssh-add /home/daemoneye/.ssh/git

echo "Keys:"
ssh-add -l
