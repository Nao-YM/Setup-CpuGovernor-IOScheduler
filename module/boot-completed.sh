#!/bin/bash
# shellcheck disable=SC2154

sleep 10

for policy in $(ls -d /sys/devices/system/cpu/cpufreq/policy*); do
   echo reflex > $policy/scaling_governor;
done 

for sd in $(ls -d /sys/block/sd*) ; do
   echo mq-deadline > $sd/queue/scheduler
done