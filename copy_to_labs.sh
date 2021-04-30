#!/usr/bin/env zsh

rsync --delete -v -a ~/labtainer-labs/${1}  ~/labtainer/trunk/labs/
