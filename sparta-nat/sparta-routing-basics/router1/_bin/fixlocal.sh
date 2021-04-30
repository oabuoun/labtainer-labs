#!/bin/bash
#
#  Script will be run after parameterization has completed, e.g.,
#  use this to compile source code that has been parameterized.
#  The container user password will be passed as the first argument.
#  Thus, if this script is to use sudo and the sudoers for the lab
#  not not permit nopassword, then use:
#  echo $1 | sudo -S the-command
#
#

NETWORK1_IF=$(ifconfig | grep -B1 "inet addr:10.1.1.254" | awk '$1!="inet" && $1!="--" {print $1}')
CONNECTION_NET_IF=$(ifconfig | grep -B1 "inet addr:172.16.0.1" | awk '$1!="inet" && $1!="--" {print $1}')

sudo ip add flush $NETWORK1_IF
sudo ip add flush $CONNECTION_NET_IF
sudo ip route del default
