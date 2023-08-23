#!/bin/bash

source /etc/profile.d/custom.sh
APP_HOME=/home/ec2-user/paychimp
chmod 777 $APP_HOME/appinit

#If app is running stop

if pgrep "java" >/dev/null 2>&1
  then
     cd $APP_HOME && ./appinit stop
     cd $APP_HOME && ./appinit start
  else
     # app is not running
     cd $APP_HOME && ./appinit start
fi
