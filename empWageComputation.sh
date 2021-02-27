#!/bin/bash


isFullTime=1
isPartTime=2
Wage_per_hr=20
limited_Num_of_working_days=20
limited_working_hrs=100

total_working_hrs=0
total_working_days=0
  
function get_Work_hrs() {
	case $1 in
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
	echo $empHrs
}

while [[ $total_working_hrs -lt $limited_working_hrs &&
			$total_working_days -lt $limited_Num_of_working_days ]]
do
		((total_working_days++))
		empHrs="$( get_Work_hrs $((RANDOM%3)) )"
		total_working_hrs=$(($total_working_hrs+$empHrs))
done

totalSalary=$(($total_working_hrs*$Wage_per_hr))
echo $totalSalary






