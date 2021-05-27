#!/bin/bash


count_all=$(df -$1 | grep "/dev/sd." | awk '{s +=$2} END {print s}')
count_free=$(df -$1 | grep "/dev/sd." | awk '{s +=$4} END {print s}')


echo "Всего дисковой памяти, $1: $count_all"
echo "Всего свободной памяти, $1: $count_free"
