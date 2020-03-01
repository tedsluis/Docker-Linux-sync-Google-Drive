#! /bin/sh

mkdir -p /Backup/GoogleDrive || true
mkdir -p /Backup/conf/credentials || true
mkdir -p /Backup/conf/drivesync || true

docker build -t google-drivesync .

docker run -it -v /etc/localtime:/etc/localtime:ro -v /Backup/GoogleDrive:/root/Documents/drive -v /Backup/conf/credentials:/root/.credentials -v /Backup/conf/drivesync:/root/.drivesync google-drivesync ruby drivesync.rb

