#!/bin/bash

host -t ns $IP >> dns_servers

assetfinder $IP >> subs

sublist=$(cat subs)

check_tranfer () {
	$sublist=$(cat subs)
	for server in $(cat dns_servers); do
		 host -l $sublist $server | grep "has address"
	done
}

check_transfer
