for (( c=1; c<=$1; c += 1 ))
do
   mv /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $c).csv.csv /home/eeglarse/flowtest/top10/top10port/$(printf "%02d" $c).csv
done