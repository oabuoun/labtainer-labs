#!/usr/bin/env zsh

#   Build
echo "=== `date` : Start Building Labtainer Lab $1 $==="

cd ~/labtainer/labtainer-student
rebuild -f -b ${1}
