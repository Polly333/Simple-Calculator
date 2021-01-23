#! /usr/bin/bash

i="y"
echo "|---------------------|"
echo  "  SIMPLE CALCULATOR "
echo "|---------------------|"
echo " Enter first number:" 
read a 
echo "Enter second number:"
read b

while [ $i = "y" ]
do 
echo "1.Addition" 
echo "2.Subtraction" 
echo "3.Multiplication" 
echo "4.Division" 

echo "Enter your choice :" 
read ch 

case $ch in 
1)res=`echo $a + $b | bc -l` 
  ;; 
2)res=`echo $a - $b | bc -l` 
  ;; 
3)res=`echo $a \* $b | bc -l  ` 
  ;; 
4)res=`echo "scale=2; $a / $b" | bc -l` 
  ;; 
*)echo "Invalid choice";; 
esac 
echo "Result : $res"

echo "Do u want to continue ?" 
read i 
if [ $i != "y" ] 
then
      exit 
fi 
done 