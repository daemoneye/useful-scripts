#!/usr/bin/env bash

eth0IPv4=`/sbin/ip addr show eth0 | grep "inet\b" | awk {'print $2'} | cut -d'/' -f1`
eth0IPv6=`/sbin/ip addr show eth0 | grep "inet6" | awk {'print $2'} | cut -d'/' -f1`
wlan0IPv4=`/sbin/ip addr show wlan0 | grep "inet\b" | awk {'print $2'} | cut -d'/' -f1`
wlan0IPv6=`/sbin/ip addr show wlan0 | grep "inet6" | awk {'print $2'} | cut -d'/' -f1`

echo "eth0 IPv4 Address is: $eth0IPv4"
echo "eth0 IPv6 Address is: $eth0IPv6"
echo "wlan0 IPv4 Address is: $wlan0IPv4"
echo "wlan0 IPv6 Address is: $wlan0IPv6"

echo ""

echo "Routing Information"
netstat -r -n | grep -v lo | tail +2
