#!/bin/bash
# RecupIpExt.sh

#
# Script to fetch the current external IP.
# This script will compare the current external IP with the one store in the text file
# and can send it by mail if different.
#

# Paths
ipDirPath='<file Directory path Here>'
ipFileName='<file name here>'
ipFile="$ipFilePath/$ipFileName"

oldIp=$(cat $ipFile)
newIp=$(curl -s ifconfig.me/ip)

if [ $newIp != $oldIp ]
then
        echo $newIp > $ipFile
        echo $newIp
        #echo $newIp | mail -s "RPI - Ext IP" wolfsepi@gmail.com
fi
