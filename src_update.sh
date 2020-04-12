#!/usr/bin/env bash

eval "$(ssh-agent)"
ssh-add /home/daemoneye/.ssh/git

for each in /home/daemoneye/src/*
do
	cd $each
	git pull
done
