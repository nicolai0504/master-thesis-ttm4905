#!/bin/bash

nfdump -R /data/netflow/oslo_gw/2012/01/$(printf "%02d" $1)/nfcapd.201201$(printf "%02d" $1)0000:nfcapd.201201$(printf "%02d" $1)2355 -n 10 -s dstip -o csv > /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv



