#!/usr/bin/env zsh

rsync --delete -v -a ~/labtainer-labs/  ~/labtainer/trunk/labs/${1}
