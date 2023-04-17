#!/bin/bash
for I in {1..5}; do
  read -p "Please Enter DOB: " YOB
  CURRENT_YEAR=2023
  CURRENT_AGE=$(expr $CURRENT_YEAR - $YOB)
  if [ $CURRENT_AGE -lt 18]; then
    echo "Dont Drink Alcohal"
  elif [ $CURRENT_AGE -gt 18 && $CURRENT_AGE -lt 45] then
    echo "Drink Alcohal"
  elif [ $CURRENT_AGE -gt 45 && $CURRENT_AGE -lt 65] then 
    echo "Not Good For Health"
  elif [ $CURRENT_AGE -gt 65 && $CURRENT_AGE -lt 110] then
    echo "Not Recomended Very Risky"
  else
    echo "Invalid Input"
  fi
done

#!/bin/bash
I=0
while [ $I -lt 6 ]; do
  read -p "Please Enter DOB: " YOB
  CURRENT_YEAR=2023
  CURRENT_AGE=$(expr $CURRENT_YEAR - $YOB)
  if [ $CURRENT_AGE -lt 18]; then
    echo "Dont Drink Alcohal"
  elif [ $CURRENT_AGE -gt 18 && $CURRENT_AGE -lt 45] then
    echo "Drink Alcohal"
  elif [ $CURRENT_AGE -gt 45 && $CURRENT_AGE -lt 65] then 
    echo "Not Good For Health"
  elif [ $CURRENT_AGE -gt 65 && $CURRENT_AGE -lt 110] then
    echo "Not Recomended Very Risky"
  else
    echo "Invalid Input"
  fi
I=$(($I+1))
done