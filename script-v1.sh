#!/bin/bash
#script step 7 in task
cd /home/seltatawy/git-clone/
git clone git@github.com:seltatawy/Task-H-Repo.git
git branch > branches
chmod +x branches
cd /home/seltatawy/git-repo-v3/Task-H-Repo/
git checkout Red
#search for string Hello in logs"
git log -b Red --grep "Hello$"
