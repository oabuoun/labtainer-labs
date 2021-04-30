#!/usr/bin/env zsh

cp $LABTAINER_DIR/${1}.tar ~/labtainer-labs/imodules/${1}.tar

echo "=== `date` : Pushing the Lab and the Imodule to devsecops_lab Git Repository $1 $==="

cd ~/labtainer-labs
git add ~/labtainer-labs/imodules/${1}.tar
git add ~/labtainer-labs/${1}
git commit -m "added/updated imodule $1"
git push origin master
