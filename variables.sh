Declaration variable in linux
→ a=10
→ b=20
→ sum=$(($a+$b))
→ echo $sum // 30
→ name = 'Naveen'
→ echo $a or echo ${a} or echo "${a}"
→ echo $name or echo "${name}"
→ echo $name12345 // nothing printed
→ echo ${name}12345 // Naveen12345

Get Metadata in AWS
-------------------
→ curl http://169.254.169.254/latest/meta-data/
→ IP=$(curl -sl http://169.254.169.254/latest/meta-data/public-ipv4/)
→ echo $IP // 107.21.164.3

Script file (ip.sh)
-------------------
#! /bin/bash
IP=$(curl -sl http://169.254.169.254/latest/meta-data/public-ipv4/)
echo $IP // 107.21.164.3
Note: file extension can be anything like .abc or .def or .fff … etc but preferred extension is .sh

Execute Script
1. bash ip.sh // 107.21.164.3
or 
2. ./ip.sh // permission denied
-     	rw-    r-- 	    r--
- file  owner  owner-group  others
d directory
read (r)-4
write (w)-2
Execute (x)-1

→ chmod 700 ip.sh
or
→ chmod +x ip.sh

./ip.sh // 107.21.164.3
or
mv ip.sh /usr/local/bin/

3. ip.sh // 107.21.164.3

Environment variables
---------------------
→ export AWS_NAME=ACFFGHFTK
→ env // we see our AWS_NAME
→ open New Section these EXPORT Values won't be there
Note: For Every user we have .bashrc
→ ll // we find .bashrc
→ nano .bashrc 
→ paste env variables
Logout and login or source .bashrc or exit from root & sudo -i
→ env 

Note:
-----
Echo in linux
write-output in Windows powershell

→ cat /var/log/syslog
→ more /var/log/syslog  // page by page
$ head myfile.txt     # display the first 10 lines of myfile.txt
$ head -n 20 myfile.txt   # display the first 20 lines of myfile.txt

$ tail myfile.txt     # display the last 10 lines of myfile.txt
$ tail -n 20 myfile.txt   # display the last 20 lines of myfile.txt
$ more myfile.txt     # display the contents one screenful at a time
$ less myfile.txt     # display the contents of myfile.txt with scrollable output
$ cat myfile.txt     # display the contents of myfile.txt
$ cat file1.txt file2.txt   # display the contents of file1.txt followed by file2.txt
$ ls | cat   # display the output of the ls command