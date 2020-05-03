#! /bin/bash
ispresent=1;
dailywage=0;
hourlywage=20;
salary=0;
count=0;
day=0
twhours=0;

for (( count=0; count<=10; count++ ))
do
   status=$(($RANDOM%2))
   whours=$(($RANDOM%10))
  if [ $status -eq $(( $ispresent )) ] && [ $(($whours+$twhours)) -le 100 ] 
  then  
     
     echo "employee is present";
	dailywage=$(( $whours * $hourlywage ));  
   	salary=$(( $salary+$dailywage ));
     	counter=$(( $counter+1 ));
  else  
     echo "employee is absent";
     salary=$(( $salary+0 ));
  fi    
done
echo "final salary" $salary
echo "total days present" $counter
