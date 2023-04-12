#!/bin/bash

username="wentuosun@outlook.com"
password="Sun..123"
ip_laptop="192.168.5.223"
ip_desktop="10.1.1.14"

host=$1 
eval ip="\$ip_$host"

rdesktop -P -K -z -x l -g 200% -u $username -p $password $ip
