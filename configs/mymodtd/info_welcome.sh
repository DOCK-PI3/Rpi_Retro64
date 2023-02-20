#!/bin/bash
cpu=$(cat /sys/class/thermal/thermal_zone0/temp)
mem=$(df -h --total)
#  echo "$(date)"
  echo "------------------------------"
  echo "Temp.CPU => $((cpu/1000))'Cº"
  echo "------------------------------"
  echo "Available memory and consumption"
  echo "------------------------------"
  echo "$mem"
  echo "------------------------------"

