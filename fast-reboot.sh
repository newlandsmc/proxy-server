#!/bin/bash

rconHost='localhost'
rconPort1='25578'
rconPass1='DWkEt6KmeSFzHQbRCwRGV3Lq6WD4HZmw'
rconPort2='25579'
rconPass2='39GL6kg2Dtpy5km7NxAAiPs55RY5nG34'
rconPort3='25581'
rconPass3='uhP2emAfauYvKLmCer8ndcsw5BnFYHtR'

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cManual Reboot: Server is rebooting in 5 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cManual Reboot: Server is rebooting in 5 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cManual Reboot: Server is rebooting in 5 seconds!'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cManual Reboot: Server is rebooting in 4 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cManual Reboot: Server is rebooting in 4 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cManual Reboot: Server is rebooting in 4 seconds!'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cManual Reboot: Server is rebooting in 3 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cManual Reboot: Server is rebooting in 3 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cManual Reboot: Server is rebooting in 3 seconds!'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cManual Reboot: Server is rebooting in 2 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cManual Reboot: Server is rebooting in 2 seconds!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cManual Reboot: Server is rebooting in 2 seconds!'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cManual Reboot: Server is rebooting in 1 second!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cManual Reboot: Server is rebooting in 1 second!'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cManual Reboot: Server is rebooting in 1 second!'

sleep 1

systemctl stop proxy.service

systemctl restart newlands-survival1201.service
sleep 5
systemctl restart creative.service
sleep 5
systemctl restart lobby.service
sleep 5

systemctl start proxy.service
