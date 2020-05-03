#! /bin/bash
status=$(( $RANDOM%2 ));
  if [ $status -eq $(( $ispresent )) ]
  then  
     
     echo "employee is present";
 
  else  
     echo "employee is absent";
 
  fi    
