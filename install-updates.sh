#!/bin/bash

rsync -Ir --remove-source-files /var/minecraft/proxy/pending-updates/* /var/minecraft/proxy/plugins/
find /var/minecraft/proxy/pending-updates/* -depth -type d -empty -delete

exit 0
