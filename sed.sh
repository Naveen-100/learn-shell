sed --> stream editor
tr modifies at character level (upper to lower case vice versa)
sed modifies at string at file level (modify line)

cat /etc/ssh/sshd_config | grep -w PasswordAuthentication
PasswordAuthentication yes
PasswordAuthentication .....
PasswordAuthentication ....

sed -i 's/.*PasswordAuthentication.*/PasswordAuthentication no/g' /etc/ssh/sshd_config
PasswordAuthentication no
PasswordAuthentication no
PasswordAuthentication no

# change 1 occurance only
sed -i '0/.*PasswordAuthentication.*/s//PasswordAuthentication yes/g' /etc/ssh/sshd_config
PasswordAuthentication yes
PasswordAuthentication no
PasswordAuthentication no