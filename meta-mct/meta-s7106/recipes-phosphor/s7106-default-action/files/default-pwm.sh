#!/bin/bash

default_duty=128

#echo $default_duty > /sys/class/hwmon/hwmon0/pwm1
#echo $default_duty > /sys/class/hwmon/hwmon0/pwm2
#echo $default_duty > /sys/class/hwmon/hwmon0/pwm3
echo $default_duty > /sys/class/hwmon/hwmon0/pwm4
echo $default_duty > /sys/class/hwmon/hwmon0/pwm5

if [ ! -f /var/tmp/acflag ]; then

echo "After ac, restart service to fix sensor"
systemctl stop xyz.openbmc_project.fansensor.service
systemctl start xyz.openbmc_project.fansensor.service


systemctl stop xyz.openbmc_project.ipmbsensor.service
systemctl start xyz.openbmc_project.ipmbsensor.service

systemctl stop xyz.openbmc_project.adcsensor.service
systemctl start xyz.openbmc_project.adcsensor.service

systemctl stop xyz.openbmc_project.psusensor.service
systemctl start xyz.openbmc_project.psusensor.service

touch /var/tmp/acflag
fi

