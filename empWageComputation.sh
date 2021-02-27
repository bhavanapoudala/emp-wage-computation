#!/bin/bash

empCheck=$((RANDOM%2))
isPresent=1
Wage_per_hr=20
No_of_Hrs=8
if [ $empCheck -eq $isPresent ]
then
   Daily_wage=$(( $No_of_Hrs*$Wage_per_hr ))
   echo "Daily wage is: " $Daily_wage
else
   Daily_wage=0
   echo $Daily_wage
fi



