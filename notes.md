#	Switch to designer VM

-	Commands
```bash
cd ~/labtainer
./update-labtainer.sh
./update-designer.sh
cp -r ~/labtainer/trunk/UI/MainUI/src/main/resources ~/.local/share/labtainers/
```

#   Build
```bash
cd ~/labtainer/labtainer-student
rebuild -f <YOUR_LAB_NAME>
```
#   Build Docs
```bash
# Ubuntu 16.04
sudo apt update
sudo apt-get install pdflatex texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra

# or Ubuntu 18.04
sudo apt install texlive-full
```


#   Publish
```bash
cd ~/labtainer/trunk/labs/
git add  <YOUR_LAB_NAME>
git commit <YOUR_LAB_NAME> -m "Adding an IModule"

cd $LABTAINER_DIR/distrib

./publish.py -d -l <YOUR_LAB_NAME>


```

#   Create Imodules
```bash
create-imodules.sh
cp -rp ~/labtainer/trunk/labs/<YOUR_LAB_NAME> ~/labtainer-labs/<YOUR_LAB_NAME>
cp $LABTAINER_DIR/imodule.tar ~/labtainer-labs/imodules/<YOUR_LAB_NAME>.tar
cp $LABTAINER_DIR/imodule.tar ~/cyberlabs/labtainer/labs/<YOUR_LAB_NAME>.tar
cd ~/labtainer-labs
git add ~/labtainer-labs/imodules/<YOUR_LAB_NAME>.tar
git commit ~/labtainer-labs/imodules/<YOUR_LAB_NAME>.tar -m "add imodule <YOUR_LAB_NAME>.tar"
git push origin master
```

cd ~/labtainer/trunk/labs/

git update-ref -d HEAD
git rm --cached -r .

#   Add Imodules
```bash
imodule github.com/oabuoun/cyberlabs/raw/master/labtainer/labs/<YOUR_LAB_NAME>.tar
```
