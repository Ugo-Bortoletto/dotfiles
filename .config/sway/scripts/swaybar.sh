#!/usr/bin/env bash


while true; do
    cpu=$(top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}')
    ram=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
    today=$(date '+%Y-%m-%d')
    now=$(date '+%T')

    echo -e "CPU: ${cpu}% | RAM: ${ram} | ${today} ${now}"
    sleep 1
done
