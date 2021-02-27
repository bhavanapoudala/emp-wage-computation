#!/bin/bash


isFullTime=1
isPartTime=2
Wage_per_hr=20
limited_Num_of_working_days=20
limited_working_hrs=100

total_working_hrs=0
total_working_days=0
while [[ $total_working_days -lt $limited_Num_of_working_days && $total_working_hrs -lt $limited_working_hrs ]]
do
   ((total_working_days++))
   empCheck=$((RANDOM%3));
	case $empCheck in
		$isFullTime)
			empHrs=8
			;;
		$isPartTime)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
	esac
	total_working_hrs=$(( $total_working_hrs+$empHrs ))

done

totalSalary=$(($total_working_hrs*$Wage_per_hr))
echo $totalSalary






