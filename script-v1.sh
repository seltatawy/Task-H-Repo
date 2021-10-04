#!/bin/bash
#script step 7 in task
cd /home/seltatawy/git-clone/
git clone git@github.com:seltatawy/Task-H-Repo.git
cd Task-H-Repo/
#to get all branches in from remote git hub
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
   git branch --track ${branch#remotes/origin/} $branch
done
git branch -a > branches
chmod +x branches
git add .
git commit -am "adding branches file"
git push origin main
cd /home/seltatawy/git-repo-v3/Task-H-Repo/
git checkout Red
#search for string Hello in logs"
git log -b Red --grep "Hello$"
