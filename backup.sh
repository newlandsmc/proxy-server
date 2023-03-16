#!/bin/bash

backupDir='/backups'
currentDate=$(date +%b-%d-%Y-%H%M%Z)

# CLEANUP

for oldBackup in $(find /backups/*.gz -mtime +6)
do
  rm -f $oldBackup
done

# MYSQL

for sqlDatabase in $(mysql -Be 'show databases' | grep -Ev 'Database|mysql|*_schema')
do
  mysqldump --databases $sqlDatabase --lock-tables=false | gzip > $backupDir/$sqlDatabase-$currentDate.sql.gz
done

# SURVIVAL

find /var/minecraft/survival -name "*.jar" > tempignore.txt
echo "/var/minecraft/survival/plugins/squaremap/web/tiles/" >> tempignore.txt

for world in $(ls /var/minecraft/survival/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/survival-$world-$currentDate.tar.gz /var/minecraft/survival/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/survival-plugins-$currentDate.tar.gz /var/minecraft/survival/plugins

rm -f tempignore.txt

# CREATIVE

find /var/minecraft/creative -name "*.jar" > tempignore.txt
echo "/var/minecraft/survival/plugins/squaremap/web/tiles/" >> tempignore.txt

for world in $(ls /var/minecraft/creative/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/creative-$world-$currentDate.tar.gz /var/minecraft/creative/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/creative-plugins-$currentDate.tar.gz /var/minecraft/creative/plugins

rm -f tempignore.txt

# LOBBY

find /var/minecraft/lobby -name "*.jar" > tempignore.txt

for world in $(ls /var/minecraft/lobby/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/lobby-$world-$currentDate.tar.gz /var/minecraft/lobby/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/lobby-plugins-$currentDate.tar.gz /var/minecraft/lobby/plugins

rm -f tempignore.txt
