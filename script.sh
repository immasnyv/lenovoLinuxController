#!/bin/bash
# Linux based Lenovo Thinkbook profile changer V1.0
# Intended for use with bash sensors widget in linux mint
# Author: Vojcztek

state=$(</sys/firmware/acpi/platform_profile)
echo "Switched to: "

if [ $state = "performance" ]
then
pkexec bash -c 'echo "balanced" > /sys/firmware/acpi/platform_profile'
echo "Balanced"
elif [ $state = "balanced" ]
then
pkexec bash -c 'echo "low-power" > /sys/firmware/acpi/platform_profile'
echo "Low power"
else
pkexec bash -c 'echo "performance" > /sys/firmware/acpi/platform_profile'
echo "Performance"
fi
