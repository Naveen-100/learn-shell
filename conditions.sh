# Police Drink & Drive
# 1. calculate Age 
# 2. Age < 18 Dont drink Alcohal
# 3. Age < 45 & > 18 drink Alcohal
# 4. Age < 65 & > 45 Not good to health
# 5. Age > 65 & < 110 Not Recommended

#!/bin/bash
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