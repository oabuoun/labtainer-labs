#   Build
echo "=== `date` : Start Building Labtainer Lab $1 $==="

cd ~/labtainer/labtainer-student
#rebuild -f ${1}

#   Build Docs
#cd ~/labtainer/trunk/labs/${1}
#make

echo "=== `date` : Publish Labtainer Lab $1 $==="
#   Publish
cd ~/labtainer/trunk/labs/
git init
git add ${1}
git commit ${1} -m "Adding an IModule"
cd $LABTAINER_DIR/distrib

./publish.py -d -f -l ${1}

#cd /home/student/labtainer/trunk/scripts/designer/bin

echo "=== `date` : Create an Imodule For Labtainer Lab $1 $==="
# Create the imodule
create-imodules.sh
cp -rp ~/labtainer/trunk/labs/${1} ~/labtainer-labs/
cp $LABTAINER_DIR/imodule.tar ~/labtainer-labs/imodules/${1}.tar

echo "=== `date` : Remove the Git repository from labs$==="
cd ~/labtainer/trunk/labs/
#git rm --cached -r .
git update-ref -d HEAD
git commit -m "reset to HEAD after creating $1 module"

echo "=== `date` : Pushing the Lab and the Imodule to labtainer-labs Git Repository $1 $==="
cd ~/labtainer-labs
git add ~/labtainer-labs/imodules/${1}.tar
git add ~/labtainer-labs/${1}
git commit -m "added/updated imodule $1"
git push origin master
