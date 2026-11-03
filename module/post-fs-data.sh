#!/bin/bash
# shellcheck disable=SC2154

echo reflex | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

for sd in $(find /sys/block -name sd*) ; do
   echo mq-deadline | tee $sd/queue/scheduler
done
