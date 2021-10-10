#!/bin/bash
#script step 7 in task
cd /home/seltatawy/git-clone/
git clone git@github.com:seltatawy/Task-H-Repo.git

cd Task-H-Repo/
#to get all branches in from remote git hub
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v main `; do
   git branch --track ${branch#remotes/origin/} $branch
done
#list all branches and save to branches file
git branch -a > branches
chmod +x branches
git add .
git commit -am "adding branches file"
git push origin main
pwd
git checkout Red
#search for string Hello in logs"
git log -b Red --grep "Hello$"
git status

#append 2 lines to script file and push to black
git checkout Black
#then copy the version of file to Black
git checkout main script-v1.sh
git status
git add .
git commit -am "adding branches file"
git push origin Black
#append 2 lines
echo "hello again" >> script-v1.sh
echo "I need a cup of coffee" >> script-v1.sh
git add .
git commit -am "adding 2 lines"
git push origin Black

hello again
I need a cup of coffee
hello again
I need a cup of coffee
hello again
I need a cup of coffee
