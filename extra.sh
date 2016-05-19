
nfdump -R /data/netflow/oslo_gw/2012/01/$(printf "%02d" $1)/nfcapd.201201$(printf "%02d" $1)0000:nfcapd.201201$(printf "%02d" $1)2355 -n 10 -s dstport -o csv 'dst ip $2 and dst port $3' -o csv > /home/eeglarse/flowtest/top10/top10csv/$1_$2_$3.csv
