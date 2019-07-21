#!/bin/bash

echo "* MODEL NAME *"
sudo dmidecode | grep "System Information" -A 2
echo
echo "* PCI DEVICES *"
lspci -nnk
echo

echo "* USB DEVICES *"
lsusb -v
echo

echo "* CPUs INFO *"
if which lscpu > /dev/null; then
    lscpu
else
    cat /proc/cpuinfo
fi
echo

echo "* KERNEL INFO *"
uname -r


