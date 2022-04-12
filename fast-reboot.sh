#!/bin/bash

rconHost='localhost'
rconPort1='25576'
rconPass1='JrvX3gKwNaVEgbcm2fQxnV9FCdzDnrTQ'
rconPort2='25577'
rconPass2='uhP2emAfauYvKLmCer8ndcsw5BnFYHtR'
rconPort3='25578'
rconPass3='DWkEt6KmeSFzHQbRCwRGV3Lq6WD4HZmw'

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cProxy rebooting in 30 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cProxy rebooting in 30 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cProxy rebooting in 30 seconds.'

sleep 25

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cProxy rebooting in 5 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cProxy rebooting in 5 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cProxy rebooting in 5 seconds.'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cProxy rebooting in 4 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cProxy rebooting in 4 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cProxy rebooting in 4 seconds.'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cProxy rebooting in 3 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cProxy rebooting in 3 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cProxy rebooting in 3 seconds.'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cProxy rebooting in 2 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cProxy rebooting in 2 seconds.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cProxy rebooting in 2 seconds.'

sleep 1

/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort1 -p $rconPass1 'broadcast &cProxy rebooting in 1 second.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort2 -p $rconPass2 'broadcast &cProxy rebooting in 1 second.'
/var/minecraft/mcrcon/mcrcon -H $rconHost -P $rconPort3 -p $rconPass3 'broadcast &cProxy rebooting in 1 second.'

sleep 1

systemctl restart proxy
