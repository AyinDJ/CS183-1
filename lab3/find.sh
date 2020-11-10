#!/bin/bash

echo -e "Finding all files in /bin, /sbin, /usr/bin, and /usr/sbin that are setuid and owned by root...\n"
echo $(find /bin /sbin /usr/bin /usr/sbin -user root -perm /4000)
echo -e "\n"
read -p "Hit the enter key to continue."

echo -e "\nFinding all files across the entire system that have setuid or setgid enabled (regardless of owner)...\n"
echo $(find / -perm /6000)
echo -e "\n"
read -p "Hit the enter key to continue."

echo -e "\nFinding all files in /var that have been changed in the last 20 minutes...\n"
echo $(find /var -mmin -20)
echo -e "\n"
read -p "Hit the enter key to continue."

echo -e "\nFinding all files in /var that are regular files of zero length...\n"
echo $(find /var -size 0 -type f)
echo "\n"
read -p "Hit the enter key to continue."

echo -e "\nFinding all files in /dev that are not regular files and also not directories...\n"
echo $(find /dev ! -type f -and ! -type d -ls)
echo -e "\n"
read -p "Hit the enter key to continue."

echo -e "\nFinding all directories in /home that are not owned by root and granting them 711 permissions...\n"
find /home -type d ! -user root -exec chmod 711 {} \;
echo -e "\n"
echo $(find /home -type d ! -user root -printf "%p %M ")
echo -e "\n"
read -p "Hit the enter key to continue."

echo -e "\nFinding all regular files in /home that are not owned by root and granting them 755 permissions...\n"
find /home -type f ! -user root -exec chmod 755 {} \;
echo -e "\n"
echo $(find /home -type f ! -user root -printf "%p %M ")
echo -e "\n"
read -p "Hit the end key to continue."

echo -e "\nFinding all files (of all types) in /etc that were modified in the last 5 days...\n"
echo $(find /etc -mtime -5) 
