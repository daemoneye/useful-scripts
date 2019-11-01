#!/usr/bin/env bash

finger | tail +2 | awk '{print $1"\t\t"$2" "$3}' | sort | uniq | awk \
	'BEGIN{print "Login\t\t| Name\n----------------+-------------";}
	{print $1"\t\t| "$2" "$3}'

exit 0
