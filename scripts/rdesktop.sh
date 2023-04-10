#!/bin/bash

username="wentuosun@outlook.com"
password="Sun..123"
ip="10.1.1.14"
rdesktop -P -K -z -x l -g 200% -u $username -p $password $ip
