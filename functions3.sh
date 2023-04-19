#!/bin/bash
function subnets(){
  echo "getting subnets in $VPC"
  aws ec2 describe-subnets --filterrs "Name=vpc-id,Values=$VPC" --region $REGION | jq ".Subnets[].SubnetId"
  echo "-----------------"
}

function sg(){
  echo "getting SG in $vpc in $REGION"
  aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$VPC" --region $REGION | jq '.SecurityGroups[].GroupId'
}

function vpcs(){
  for REGION in $@; do
    echo "Getting VPC List in Regions $REGION..."
    vpcs=$(aws ec2 describe-vpcs --region "${REGION}" | jq ".Vpcs[].VpcId" | tr -d '"')
    echo $vpcs
    for vpc in $vpcs; do
      subnets $vpc
    done
    for vpc in $vpcs; do
      sg $vpc
    done
  done
}
vpcs $@

execution: bash vpcs us-east-1 us-east-2 ap-south-1