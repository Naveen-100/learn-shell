Assign IAM Role to EC2 instance
Login to EC2 as ec2-user
aws --version
----------------------
#!/bin/bash
For REGION in $(aws ec2 describe-regions | jq ".Regions[].RegionName" | tr -d '"'); do
    echo "--------------$REGION-------------"
    aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" | tr -d '"'
    echo "------------------------------------------"
    sleep 1
done

filename: vpc.sh
#!/bin/bash
REGION1 = $1
REGION2 = $2
aws ec2 describe-vpcs --region $REGION1 | jq ".Vpcs[].VpcId" | tr -d '"'
echo "------------------------------------------"
aws ec2 describe-vpcs --region $REGION2 | jq ".Vpcs[].VpcId" | tr -d '"'

execution: ./vpc.sh ap-south-1 us-east-1
explanation: $1 replaced with ap-south-1 & $2 -- us-east-1
problem: we need to specify no of arguments to user

$# -- it will let you know how many arguments/parameters specified by user in command line

#!/bin/bash
if [$# -gt 0]; then
  echo "greater than 0"
else
  echo "less than 0"
fi

$@ or $* -- List of arguments
(./vpc.sh ap-south-1 us-east-1) --  ap-south-1, us-east-1 assigned to $@
#!/bin/bash
REGION = $@
aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" | tr -d '"'
execution: ./vpc.sh ap-south-1 us-east-1

#!/bin/bash
REGIONS=$@
For REGION in REGIONS; do
    echo "--------------$REGION-------------"
    aws ec2 describe-vpcs --region $REGION | jq ".Vpcs[].VpcId" | tr -d '"'
    echo "------------------------------------------"
    sleep 1
done
execution: ./vpc.sh ap-south-1 us-east-1

$? -- gives Error code of last executed command
echo $?
0
command successfully executed status code 0

#!/bin/bash
ls -l
if [$? -eq 0]; then
  echo "successfully executed"
else
  echo "Failed with error code $?"
fi