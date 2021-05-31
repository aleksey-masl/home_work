#!/bin/bash


count_all=( `df -m | grep "/dev/sd.\|/dev/mapper" | awk ' {print $2} '` )
echo "${count_all[@]}" 

