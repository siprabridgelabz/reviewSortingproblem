read -p "Enter 1st Number: " a
read -p "Enter 2nd Number: " b
read -p "Enter 3rd Number: " c
compute1=$(($a+$b*$c))
echo $compute1
compute2=$(($a*$b+$c))
echo $compute2
compute3=$(($c+$a/$b))
echo $compute3
compute4=$(($a%$b+$c))
echo $compute4


declare -A arithmeticop=([compute1]="a+b*c" [compute2]="a*b+c" [compute3]="c+a/b" [compute4]="a%b+c")
echo ${arithmeticop[compute1]}
echo ${arithmeticop[compute2]}
echo ${arithmeticop[compute3]}
echo ${arithmeticop[compute4]}

declare -A result
result[0]="$compute1"
result[1]="$compute2"
result[2]="$compute3"
result[3]="$compute4"
 echo "result=${result[0]}"
for ((i=0; i<4; i++));
do
array [$i]=$(( ${result[$i]} ))
done
echo "array=${array[0]}"
