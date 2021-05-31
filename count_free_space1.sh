#!/bin/bash


count_all=( $(df "-$1" | grep "/dev/sd.\|/dev/mapper" | awk ' {print $2} ') )
total_all=0

for i in "${count_all[@]}" 
do
	let total_all+=$i
done

count_free=( $(df -$1 | grep "/dev/sd.\|/dev/mapper" | awk ' {print $4} ') )
total_free=0

for i in "${count_free[@]}"
do
	let total_free+=$i        
done 

echo "Всего дисковой памяти, $1: $total_all"                    
echo "Всего свободной памяти, $1: $total_free"
