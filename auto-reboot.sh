#!/bin/bash

rconHost='localhost'
rconPort1='25577'
rconPass1='uhP2emAfauYvKLmCer8ndcsw5BnFYHtR'
rconPort2='25578'
rconPass2='DWkEt6KmeSFzHQbRCwRGV3Lq6WD4HZmw'
rconPort3='25579'
rconPass3='39GL6kg2Dtpy5km7NxAAiPs55RY5nG34'
rconPort4='25581'
rconPass4='uhP2emAfauYvKLmCer8ndcsw5BnFYHtR'

dateFormat=$(date +"%B %d %H:%M%Z")
stateChangeTime=$(date +"%B %d %H:%M%Z" -d "$(systemctl show proxy.service -P StateChangeTimestamp)")
uptimeTotal=$(($(date -d "$dateFormat" +%s) - $(date -d "$stateChangeTime" +%s)))

if [[ $uptimeTotal -lt 171000 ]]
then
  exit
fi

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cAuto Reboot: Server is rebooting in 5 minutes!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cAuto Reboot: Server is rebooting in 5 minutes!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cAuto Reboot: Server is rebooting in 5 minutes!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort4 -p $rconPass4 'broadcast &cAuto Reboot: Server is rebooting in 5 minutes!'

sleep 240

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cAuto Reboot: Server is rebooting in 1 minute!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cAuto Reboot: Server is rebooting in 1 minute!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cAuto Reboot: Server is rebooting in 1 minute!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort4 -p $rconPass4 'broadcast &cAuto Reboot: Server is rebooting in 1 minute!'

sleep 30

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cAuto Reboot: Server is rebooting in 30 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cAuto Reboot: Server is rebooting in 30 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cAuto Reboot: Server is rebooting in 30 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort4 -p $rconPass4 'broadcast &cAuto Reboot: Server is rebooting in 30 seconds!'

sleep 25

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cAuto Reboot: Server is rebooting in 5 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cAuto Reboot: Server is rebooting in 5 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cAuto Reboot: Server is rebooting in 5 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort4 -p $rconPass4 'broadcast &cAuto Reboot: Server is rebooting in 5 seconds!'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cAuto Reboot: Server is rebooting in 4 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cAuto Reboot: Server is rebooting in 4 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cAuto Reboot: Server is rebooting in 4 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort4 -p $rconPass4 'broadcast &cAuto Reboot: Server is rebooting in 4 seconds!'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cAuto Reboot: Server is rebooting in 3 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cAuto Reboot: Server is rebooting in 3 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cAuto Reboot: Server is rebooting in 3 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort4 -p $rconPass4 'broadcast &cAuto Reboot: Server is rebooting in 3 seconds!'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cAuto Reboot: Server is rebooting in 2 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cAuto Reboot: Server is rebooting in 2 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cAuto Reboot: Server is rebooting in 2 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort4 -p $rconPass4 'broadcast &cAuto Reboot: Server is rebooting in 2 seconds!'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cAuto Reboot: Server is rebooting in 1 second!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cAuto Reboot: Server is rebooting in 1 second!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cAuto Reboot: Server is rebooting in 1 second!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort4 -p $rconPass4 'broadcast &cAuto Reboot: Server is rebooting in 1 second!'

sleep 1    

systemctl stop proxy.service

systemctl restart survival.service
sleep 5
systemctl restart newlands-survival1201.service
sleep 5
systemctl restart creative.service
sleep 5
systemctl restart lobby.service
sleep 5

systemctl start proxy.service
