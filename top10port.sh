#!/bin/bash
ip_string=''
ip=$(awk -F',' 'NR == 2 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 3 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 4 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 5 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 6 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 7 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 8 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 9 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 10 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip' or '
ip=$(awk -F',' 'NR == 11 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $1).csv)
ip_string+='dst ip '$ip


echo $ip_string

nfdump -R /data/netflow/oslo_gw/2012/01/$(printf "%02d" $1)/nfcapd.201201$(printf "%02d" $1)0000:nfcapd.201201$(printf "%02d" $1)2355 -n 10 -s dstport $iplist -o csv > /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $1).csv
