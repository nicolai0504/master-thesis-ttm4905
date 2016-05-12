
mkdir /home/eeglarse/flowtest/top10
for (( c=1; c<=$1; c += 1 ))
do
   bash /home/eeglarse/flowtest/top10ip.sh $c
done