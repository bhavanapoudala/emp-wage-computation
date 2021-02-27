#!/bin/bash

empCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
Wage_per_hr=20

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
echo "Daily wage of an employee is: " $Daily_wage




