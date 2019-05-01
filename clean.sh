#!/usr/bin/env sh
#
# Shell script to clean any old swap and temp files left by vim in Slackware
# Written by: Keane Wolter
#

echo "Removing old swap files"
find ~ -name '.*.swp' -exec rm -rfv {} \;

echo "Removing hidden files that end in ~"
find ~ -name '.*~' -exec rm -rfv {} \;

echo "Removing files that end in ~"
find ~ -name '*~' -exec rm -rfv {} \;

echo "Clearning /tmp directory!"
rm -rf /tmp/* 2> /dev/null
