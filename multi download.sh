#!/bin/bash
# desc: download resource
# author: Yazhou

jobindex=$1
filenames=("download1001_1401" "download201_400" "download401_600" "download601_800" "download810_1000" "download1001_1200" "download1201_1400" "download1401_1600" "download1601_1800" "download1801_2000" "download2001_2264")
filename=${filenames[$jobindex]}
cat $filename | while read line
do
wget -c -t 999 $line
done
