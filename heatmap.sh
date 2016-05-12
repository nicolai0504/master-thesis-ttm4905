#!/bin/bash
for (( i = 1; i < 31; i++ )); do
	iplist=()
	ip=$(awk -F',' 'NR == 2 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[0]=$ip
	ip2=$(awk -F',' 'NR == 3 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[1]=$ip2
	ip=$(awk -F',' 'NR == 4 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[2]=$ip
	ip=$(awk -F',' 'NR == 5 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[3]=$ip
	ip=$(awk -F',' 'NR == 6 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[4]=$ip
	ip=$(awk -F',' 'NR == 7 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[5]=$ip
	ip=$(awk -F',' 'NR == 8 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[6]=$ip
	ip=$(awk -F',' 'NR == 9 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[7]=$ip
	ip=$(awk -F',' 'NR == 10 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[8]=$ip
	ip=$(awk -F',' 'NR == 11 { print $5}' /home/eeglarse/flowtest/top10/$(printf "%02d" $i).csv)
	iplist[9]=$ip
	portlist=()
	ip=$(awk -F',' 'NR == 2 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[0]=$ip
	ip=$(awk -F',' 'NR == 3 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[1]=$ip
	ip=$(awk -F',' 'NR == 4 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[2]=$ip
	ip=$(awk -F',' 'NR == 5 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[3]=$ip
	ip=$(awk -F',' 'NR == 6 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[4]=$ip
	ip=$(awk -F',' 'NR == 7 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[5]=$ip
	ip=$(awk -F',' 'NR == 8 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[6]=$ip
	ip=$(awk -F',' 'NR == 9 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[7]=$ip
	ip=$(awk -F',' 'NR == 10 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[8]=$ip
	ip=$(awk -F',' 'NR == 11 { print $5}' /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $i).csv)
	portlist[9]=$ip
	for (( s = 0; s < 10; s++ )); do
	   	for (( j = 0; j < 10; j++ )); do
	   		$(nfdump -R /data/netflow/oslo_gw/2012/01/$(printf "%02d" $i)/nfcapd.201201$(printf "%02d" $i)0000:nfcapd.201201$(printf "%02d" $i)2355 -n 10 -s dstport -o csv 'dst ip ${iplist[$s]} and dst port ${portlist[$j]}' -o csv)
	   	done
	done
done