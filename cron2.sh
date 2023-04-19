install docker
--------------
curl https://get.docker.com/ | bash

nano /root/restart.sh
---------------
#!/bin/bash
service nginx status | grep 'active (running)' > /dev/null 2 >&1
if [$? != 0]; then
  sudo service nginx restart > /dev/null
fi

service docker status | grep 'active (running)' > /dev/null 2 >&1
if [$? != 0]; then
  sudo service docker restart > /dev/null
fi

chmod 700 /root/restart.sh
crontab -e
* * * * * /root/restart.sh #run for every minute
save & exit

divide screen into 2 tabs
-------------------------
tmux # terminal multiplex
ctrl+b+shift+5 # divide screen into 2 tabs vertically
ctrl+b to shift b/w tabs 
run cronjob in 1 screen # service docker start or service docker stop
check status in 2 screen  # watch service docker status
exit # exit from tmux