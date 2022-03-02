#!/bin/bash -x

max=a
n=0
num1=0
num2=0
num3=0
num4=0
num5=0
num6=0

function diceroll()
{
        echo  $(( (RANDOM%6)+1 ))
}


while [[ $num1 -lt 10 && $num2 -lt 10 && $num3 -lt 10 && $num4 -lt 10 && $num5 -lt 10 && $num6 -lt 10 ]]
do
	((n++))
	diceroll n
	case $(diceroll n) in
			"1")
			num1=$(($num1+1))
			max[n]="one"
			;;
			"2")
			num2=$(($num2+1))
			max[n]="two"
			;;
			"3")
			num3=$(($num3+1))
			max[n]="three"
			;;
			"4")
			num4=$(($num4+1))
			max[n]="four"
			;;
			"5")
			num5=$(($num5+1))
			max[n]="five"
			;;
			*)
			num6=$(($num6+1))
			max[n]="six"
			;;
	esac
done
echo 	num1=$num1
	num2=$num2
	num3=$num3
	num4=$num4
	num5=$num5
	num6=$num6
