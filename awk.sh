cat /etc/passwd | grep -w user8

cat /etc/passwd | grep -w user8 | cut -d ":" -f 1
o/p: user8
cat /etc/passwd | grep -w user8 | cut -d ":" -f 1,2
o/p: user8:x
cat /etc/passwd | grep -w user8 | cut -d ":" -f 1,2,3
o/p: user8:x:1011

cat /etc/passwd | grep -w user8 | cut -d ":" -f 3,2,1  # not changing positions
o/p: user8:x:1011

# now we use awk for data mainpulation

aws ec2 describe-vpcs --region us-east-1 | jq '.Vpcs[]|.VpcId,.CidrBlock'
o/p: 
"VpcId" 
"CidrBlock" 

aws ec2 describe-vpcs --region us-east-1 | jq '.Vpcs[]|.VpcId,.CidrBlock' | paste - -
o/p: "VpcId" "CidrBlock" 

aws ec2 describe-vpcs --region us-east-1 | jq '.Vpcs[]|.VpcId,.CidrBlock' | paste - - | tr -d '"'
-tr means transulate
o/p: VpcId CidrBlock

aws ec2 describe-vpcs --region us-east-1 | jq '.Vpcs[]|.VpcId,.CidrBlock' 
| paste - - | tr -d '"' | awk '{print $1 "-->" $2}'
o/p: VpcId --> CidrBlock

aws ec2 describe-vpcs --region us-east-1 | jq '.Vpcs[]|.VpcId,.CidrBlock' 
| paste - - | tr -d '"' | awk '{print $2 "-->" $1}'
o/p: CidrBlock --> VpcId 