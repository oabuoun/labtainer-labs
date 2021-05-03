#!/usr/bin/env zsh
echo "=== `date` : Sync Between trunk/labs/$1 and labtainer-labs Git Repository $1 $==="

rsync --delete -v -a ~/labtainer/trunk/labs/${1} ~/labtainer-labs/

echo "=== `date` : Copying Imodule to labtainer-labs Git Repository $1 $==="
cp $LABTAINER_DIR/${1}.tar ~/labtainer-labs/imodules/${1}.tar

echo "=== `date` : Pushing the Lab and the Imodule to labtainer-labs Git Repository $1 $==="

cd ~/labtainer-labs
git add ~/labtainer-labs/imodules/${1}.tar
git add ~/labtainer-labs/${1}
git commit -m "added/updated imodule $1"
git push origin master
