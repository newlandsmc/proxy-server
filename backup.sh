#!/bin/bash

backupDir='/backups'
currentDate=$(date +%b-%d-%Y-%H%M%Z)

# CLEANUP

for oldBackup in $(find /backups/*.gz -mtime +2)
do
  rm -f $oldBackup
done

# MYSQL

for sqlDatabase in $(mysql -Be 'show databases' | grep -Ev 'Database|mysql|*_schema')
do
  mysqldump --databases $sqlDatabase --lock-tables=false | gzip > $backupDir/$sqlDatabase-$currentDate.sql.gz
done

# SURVIVAL

find /var/minecraft/newlands/survival -name "*.jar" > tempignore.txt
echo "/var/minecraft/newlands/survival/plugins/squaremap/web/tiles/" >> tempignore.txt

for world in $(ls /var/minecraft/newlands/survival/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/survival-$world-$currentDate.tar.gz /var/minecraft/newlands/survival/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/survival-plugins-$currentDate.tar.gz /var/minecraft/newlands/survival/plugins

rm -f tempignore.txt

# CREATIVE

find /var/minecraft/newlands/creative -name "*.jar" > tempignore.txt
echo "/var/minecraft/newlands/survival/plugins/squaremap/web/tiles/" >> tempignore.txt

for world in $(ls /var/minecraft/newlands/creative/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/creative-$world-$currentDate.tar.gz /var/minecraft/newlands/creative/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/creative-plugins-$currentDate.tar.gz /var/minecraft/newlands/creative/plugins

rm -f tempignore.txt

# LOBBY

find /var/minecraft/newlands/lobby -name "*.jar" > tempignore.txt

for world in $(ls /var/minecraft/newlands/lobby/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/lobby-$world-$currentDate.tar.gz /var/minecraft/newlands/lobby/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/lobby-plugins-$currentDate.tar.gz /var/minecraft/newlands/lobby/plugins

rm -f tempignore.txt
