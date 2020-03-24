#!/bin/bash


#user input
FILE=$1

while IFS= read -r input
do 
shodan host $input 2>&1 | tee -a shodan-results.txt


done < $FILE

#outputs a file with the resolved hosts
#grep -i hostnames | awk '{print $2}' | tee -a hostnames.txt 

#saves the host names into a variable 

hosts=$(cat shodan-results.txt | grep -i hostnames | awk '{print $2}')

#grab header information

for item in $hosts
do 
echo $item && curl -I -s -L item

done