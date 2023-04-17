#! /bin/bash
a=5
b=10
if [$b -gt $a]; do
  echo "Yes"
else
  echo "No"
fi

or gate -o or ||
and gate -a or &&

#! /bin/bash
a=5
b=10
if [$b -gt 5 && $a -lt 10]; do
  echo "Yes"
else
  echo "No"
fi

Arithematic
#!/bin/bash
a=$1
b=$2
echo "Arithematic"
echo $(expr $a + $b)
echo $(expr $a \* $b)
echo $(expr $a / $b)
echo $(expr $a % $b)