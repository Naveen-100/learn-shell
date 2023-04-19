#!/bin/bash
function test1(){
  read -p "1 number" num1
  read -p "2 number" num2
  add=$(($num1+$num2))
  echo "Addition is $add"
  return $add 
}
function test2(){
  read -p "1 number" num1
  read -p "2 number" num2
  add=$(($num1+$num2))
  echo "Addition is $add"
  return $add 
}
test1
echo $? # 40 60 -- 100
test2
echo $? # 50 50 -- 100

execution: bash file1.sh 
Note: we cant return value directly we need to use $? 