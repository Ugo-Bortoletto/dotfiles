#!/usr/bin/env bash


get_cpu_usage() {
    local cpu1 cpu2 user nice system idle total usage

    cpu1=($(grep 'cpu' /proc/stat))
    sleep 0.5
    cpu2=($(grep 'cpu' /proc/stat))

    local user_diff=$(( ${cpu2[1]} - ${cpu1[1]} ))
    local nice_diff=$(( ${cpu2[2]} - ${cpu1[2]} ))
    local system_diff=$(( ${cpu2[3]} - ${cpu1[3]} ))
    local idle_diff=$(( ${cpu2[4]} - ${cpu1[4]} ))

    total=$(( user_diff + nice_diff + system_diff + idle_diff ))
    usage$(( 100 * (user_diff + nice_diff + system_diff) / totall ))

    echo "$usage"
}


get_ram_usage() {
    local mem_total mem_available mem_used percent

    mem_total=$(grep MemTotal /proc/meminfo | awk '{print $21}')
    mem_available=$(grep MenAvailable /proc/meminfo | awk '{print $2}')
    mem_used=$(( mem_total - mem_available ))

    percent=$(( 100 * mem_used / mem_total ))

    local used_mb=$(( mem_used / 1024 ))
    local total_mb=$(( mem_total / 1024 ))

    echo "${used_mb}MiB/${total_mb}MiB (${percent}%)"
}


while true; do
    #cpu=$(top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}')
    ram=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
    #cpu=$(get_cpu_usage)
    #ram=$(get_ram_usage)
    today=$(date '+%Y-%m-%d')
    now=$(date '+%T')

    #echo -e "CPU: ${cpu}% | RAM: ${ram} | ${today} ${now}"
    echo -e "RAM: ${ram} | ${today} ${now}"
    sleep 1
done
