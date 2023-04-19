How to restart the services?

cron scheduler
--------------
https://crontab.guru/
run minimum of 1 minute
every 1 miniute check service
if service stop then restart service

nano /root/restart.sh
---------------
#!/bin/bash
service nginx status | grep 'active (running)' > /dev/null 2 >&1
if [$? != 0]; then
  sudo service nginx restart > /dev/null
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
run cronjob in 1 screen # service nginx start or service nginx stop
check status in 2 screen  # watch service nginx status
exit # exit from tmux