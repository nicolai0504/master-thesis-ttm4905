for (( c=0; c<=$1; c += 1 ))
do
   rm $(printf "%04d" $c).csv
done