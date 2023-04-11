#!/bin/bash

rsync -Ir --remove-source-files /var/minecraft/newlands/proxy/pending-updates/* /var/minecraft/newlands/proxy/plugins/
find /var/minecraft/newlands/proxy/pending-updates/* -depth -type d -empty -delete

exit 0
