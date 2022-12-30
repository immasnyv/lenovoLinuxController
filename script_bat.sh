#!/bin/bash
# Linux based Lenovo Thinkbook battery conservation mode changer V1.0
# Intended for use with bash sensors widget in linux mint
# Author: Vojcztek
state=$(</sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)

if [ $state == 0 ]
then
pkexec bash -c 'echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
echo "Battery limit switched to 1"
elif [ $state == 1 ]
then
pkexec bash -c 'echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
echo "Battery limit switched to 0"
else
echo "Unsupported state"
fi
