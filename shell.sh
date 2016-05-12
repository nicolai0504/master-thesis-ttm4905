#!/bin/bash
mkdir /home/eeglarse/flowtest/2012_02/$(printf "%02d" $1)
clock_converter(){
	if [ $(($1 % 100)) -gt 59 ]; then
		return $(($1 % 100))
	fi
	if [ $(($1 % 100)) -lt 60 ]; then
		echo $(printf "%04d" $1)
		return $(($1 % 100))
	fi
	}

for (( c=0; c<=2355; c += 5 ))
do
   nfdump -r $(printf "%02d" $1)/nfcapd.201202$(printf "%02d" $1)$( clock_converter $c ) -n 10 -s srcip -o csv > /home/eeglarse/flowtest/2012_02/$(printf "%02d" $1)/$( clock_converter $c ).csv
done




