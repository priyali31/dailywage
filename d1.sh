#! /bin/bash
ispresent=1;
dailywage=0;
hourlywage=20;
salary=0;
count=0;
day=0
twhours=0;
while [ $twhours -le 100 ]
do
	status=$(($RANDOM%2))
	case $status in
	1)	whours=$((RANDOM%10))
		if [ $(($whours+$twhours)) -le 100 ]
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
			break
		fi
	;;
	0)	echo "Absent."
		day=$(($day + 1))
	;;
	esac
done

status=$(( $RANDOM%2 ));
  if [ $status -eq $(( $ispresent )) ]
  then  
     
     echo "employee is present";
     
  else  
     echo "employee is absent";
     
  fi    

