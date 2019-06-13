#!/usr/bin/env sh

for each in `/sbin/ip -o link show | cut -d' ' -f2 | cut -d':' -f1 | grep -v lo`
do
	echo "$each IPv4 has the following addresses:"
	for address in `/sbin/ip addr show $each | grep "inet\b" | awk {'print $2'} | cut -d'/' -f1`
	do
		echo "\t$address"
	done
	echo "$each IPv6 has the following addresses:"
	for address in `/sbin/ip addr show $each | grep "inet6" | awk {'print $2'} | cut -d'/' -f1`
	do
		echo "\t$address"
	done
done

echo ""

echo "Routing Information"
netstat -r -n | grep -v lo | tail +2
