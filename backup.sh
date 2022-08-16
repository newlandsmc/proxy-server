#!/bin/bash

backupDir='/var/minecraft/backups'
currentDate=$(date +%b-%d-%Y-%H%M%Z)

# MYSQL

for sqlDatabase in $(mysql -Be 'show databases' | grep -Ev 'Database|mysql|*_schema')
do
  mysqldump --databases $sqlDatabase --lock-tables=false | gzip > $backupDir/$sqlDatabase-$currentDate.sql.gz
done

# KHAVALON

find /var/minecraft/khavalon -name "*.jar" > tempignore.txt
echo "/var/minecraft/khavalon/plugins/squaremap/web/tiles/" >> tempignore.txt

for world in $(ls /var/minecraft/khavalon/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/khavalon-$world-$currentDate.tar.gz  /var/minecraft/khavalon/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/khavalon-plugins-$currentDate.tar.gz  /var/minecraft/khavalon/plugins

rm -f tempignore.txt

# ASTHONIA

find /var/minecraft/asthonia -name "*.jar" > tempignore.txt
echo "/var/minecraft/asthonia/plugins/squaremap/web/tiles/" >> tempignore.txt

for world in $(ls /var/minecraft/asthonia/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/asthonia-$world-$currentDate.tar.gz  /var/minecraft/asthonia/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/asthonia-plugins-$currentDate.tar.gz  /var/minecraft/asthonia/plugins

rm -f tempignore.txt

# CREATIVE

find /var/minecraft/creative -name "*.jar" > tempignore.txt
echo "/var/minecraft/creative/plugins/squaremap/web/tiles/" >> tempignore.txt

for world in $(ls /var/minecraft/creative/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/creative-$world-$currentDate.tar.gz  /var/minecraft/creative/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/creative-plugins-$currentDate.tar.gz  /var/minecraft/creative/plugins

rm -f tempignore.txt

# LOBBY

find /var/minecraft/lobby -name "*.jar" > tempignore.txt

for world in $(ls /var/minecraft/lobby/worlds/)
do
  tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/lobby-$world-$currentDate.tar.gz  /var/minecraft/lobby/worlds/$world
done

tar --exclude-from=tempignore.txt --warning=no-file-changed -czpf $backupDir/lobby-plugins-$currentDate.tar.gz  /var/minecraft/lobby/plugins

rm -f tempignore.txt

# CLEANUP

for oldBackup in $(find /var/minecraft/backups -mtime +1)
do
  rm -f $oldBackup
done
