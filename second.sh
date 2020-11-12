#! /bin/bash


number=1
count=0
function isPrime(){
  f=0
  for ((c=2;c<$1;c++))
  do
  check=$(($1%$c))
  if [ $check -eq 0 ]
  then
  f=1
  break
  fi
  done
  echo "$f"
}
val=1

while [[ $val -ne 0 ]]
do
a=$((RANDOM%9+1))
b=$((RANDOM%9))
c=$((RANDOM%9))
d=$((RANDOM%9))

number=$((a*1000+b*100+c*10+d))
((count+=1))
val=$(isPrime $number)
done

echo "No of Generated 4 digit numbers => $count"
echo "Prime number =>$number"
