#! /bin/bash
ispresent=1;
dailywage=0;
hourlywage=20;
salary=0;
count=0;
day=0
twhours=0
for (( count=0; count<=10; count++ ))
do
status=$(($RANDOM%2))
whours=$(($RANDOM%10))
if [ $(($whours+$twhours)) -le 100 ] && [ $status -eq $(( $ispresent )) ]
then
		dailywage=$(( $whours * $hourlywage ))
		salary=$(( $salary + $dailywage ))
		day=$(($day + 1))
			if [ $whours -lt 9 ]
			then
				echo "(Part-Time) : Present : Day-$day : $dailywage = $whours x $hourlywage"
			else
				echo "(Full-Time) : Present : Day-$day : $dailywage = $whours x $hourlywage"
			fi
			twhours=$(($twhours + $whours))
else
		echo "Absent."
		day=$(($day + 1))
fi
done
