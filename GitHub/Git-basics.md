git config --global user.name "prabha123-git"
git config --global user.email "prabhadattatreya79@gmail.com"

git config --list 

git init 				# initialing the git folder (converting the normal folder into git  folder we run git init command)

git status
git add .
git commit -m "first commit"
git push -u origin main

git checkout -b Git-GitHub
git branch
git checkout Git-GitHub/ git switch <branchname>

git remote -v 				    # it will display the remote respo it connected

Git branch                      # to list the branches in local
Git branch -r                   # will list branches in remote
git push origin --delete test       # to delete branch from remote
git branch -d test                  # to delete the branch locally

git fetch --prune                   # to refresh the system or clean up.