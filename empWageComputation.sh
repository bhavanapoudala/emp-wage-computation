#!/bin/bash


isFullTime=1
isPartTime=2
totalSalary=0
Wage_per_hr=20
Num_of_working_days=30
for (( day=1; day<=$Num_of_working_days; day++ ))
do
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

	Daily_wage=$(( $Wage_per_hr*$empHrs ))
	totalSalary=$(($Daily_wage+$totalSalary))

done
echo "Total salary of an Employee in a month: " $totalSalary





