
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
   total_file=$(awk -F',' 'NR == 15 { print $1}' /home/eeglarse/flowtest/2012_02/$(printf "%02d" $1)/$( clock_converter $c ).csv)
   echo $total_file >> testfile2$1.csv
done

awk '{s+=$1} END {print s}' testfile2$1.csv >>datefile2.csv



