#!/bin/bash
s1=$1
s2=$2
if [ "${s1}" = "${s2}" ]
then 
echo "Both Same"
else 
echo "Both Different"
fi

Delete users
------------
for USER in $(cat /etc/passwd | grep -i user1 | cut -d ":" -f 1)
do 
userdel -r $USER
sleep 1
done

1. Input user $1 or $@
2. check user if not there create user with random password
3. random password with min  8 chars + random 3 or 4 digits + end with special character
4. Assign password to user & fore user to change password for first login

#!/bin/bash
USERNAME=$1
EXISTINGUSER=$(cat /etc/passwd | grep -w -i ${USERNAME} | cut -d ':' -f 1)
if [ "${USERNAME}" = "${EXISTINGUSER}"]; then
    echo "User Already Exists"
else  
    echo "${USERNAME} Not Found Let's Create User"
    useradd -m -d /home/$USERNAME $USERNAME
    specialchars="!@#$%^&*()_"
    randomspecialchar=$($specialchars | fold -w1 | shuf | head -1)
    PASSWORD=India@${RANDOM}${randomspecialchar}
    echo "$USERNAME:$PASSWORD" | sudo chpasswd
    passwd --expire $USERNAME
    echo "user created with $USERNAME $PASSWORD"
fi

#!/bin/bash
USERS=$@
for USERNAME in $USERS; do
  EXISTINGUSER=$(cat /etc/passwd | grep -w -i ${USERNAME} | cut -d ':' -f 1)
  if [ "${USERNAME}" = "${EXISTINGUSER}"]; then
      echo "User Already Exists"
  else  
      echo "${USERNAME} Not Found Let's Create User"
      useradd -m -d /home/$USERNAME $USERNAME
      specialchars="!@#$%^&*()_"
      randomspecialchar=$($specialchars | fold -w1 | shuf | head -1)
      PASSWORD=India@${RANDOM}${randomspecialchar}
      echo "$USERNAME:$PASSWORD" | sudo chpasswd
      passwd --expire $USERNAME
      echo "user created with $USERNAME $PASSWORD"
  fi
done