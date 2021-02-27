#!/bin/bash

empCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
Wage_per_hr=20
No_of_Hrs=8
partTime_hr=8
partTime_wage=10
if [ $isFullTime -eq $empCheck ]
then
	Daily_wage=$(( $Wage_per_hr*$No_of_Hrs ))
	echo "Full time wage: " $Daily_wage

elif [ $isPartTime -eq $empCheck ]
then 
   Daily_wage=$(( $partTime_hr*$partTime_wage ))
   echo "Part time wage is: " $Daily_wage
else
   Daily_wage=0
   echo $Daily_wage
fi



