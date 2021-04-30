#!/usr/bin/env zsh

echo "=== `date` : Publish Labtainer Lab $1 $==="
#   Publish
cd ~/labtainer/trunk/labs/
rm -rf .git
git init
git add ${1}
git commit ${1} -m "Adding an IModule"
cd $LABTAINER_DIR/distrib

./publish.py -d -f -l ${1}

#cd /home/student/labtainer/trunk/scripts/designer/bin

echo "=== `date` : Create an Imodule For Labtainer Lab $1 $==="
# Create the imodule
create-imodules.sh

echo "=== `date` : Remove the Git repository from labs$==="
cd ~/labtainer/trunk/labs/
#git rm --cached -r .
git update-ref -d HEAD
git commit -m "reset to HEAD after creating $1 module"

rsync --delete -v -a ~/labtainer/trunk/labs/${1} ~/labtainer-labs/
cp $LABTAINER_DIR/imodule.tar $LABTAINER_DIR/${1}.tar
