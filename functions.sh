Functions:
- return
- break
- continue
syntax: 
-------
function function_name(){}
or
function_name(){}

#!/bin/bash
Getvpc(){
  echo "List of VPC's in $1"
  vpc_list = $(aws ec2 describe-vpcs --region $1 | jq .Vpcs[].VpcId | tr -d '"')
  for vpc in $vpc_list; do
    echo "vpc id is $vpc"
  done 
}
Getvpc $1

execution: bash get_vpc us-east-1

#!/bin/bash
Getvpc(){
  echo "List of VPC's in $1"
  vpc_list = $(aws ec2 describe-vpcs --region $1 | jq .Vpcs[].VpcId | tr -d '"')
  for vpc in $vpc_list; do
    echo "vpc id is $vpc"
  done 
}
for X in $@; do
  Getvpc $X
done

execution: bash get_vpc us-east-1 us-east-2 ap-south-1