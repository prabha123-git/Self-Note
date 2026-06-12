# Git Basics

## Configure Git Username and Email

```bash
git config --global user.name "prabha123-git"
git config --global user.email "prabhadattatreya79@gmail.com"
```

Purpose:
Used to configure Git username and email globally on the system. Every commit made from this machine will use these details.

---

## Verify Git Configuration

```bash
git config --list
```

Purpose:
Displays all configured Git settings.

---

## Initialize Git Repository

```bash
git init
```

Purpose:
Initializes a Git repository by creating a hidden .git folder.
Converts a normal directory into a Git repository.

---

## Check Repository Status

```bash
git status
```

Purpose:
Displays the current state of the repository.
Shows:
- Current branch
- Modified files
- Staged files
- Untracked files

---

## Add Files to Staging Area

```bash
git add .
```

Purpose:
Adds all new and modified files to the staging area.

---

## Create Commit

```bash
git commit -m "first commit"
```

Purpose:
Creates a snapshot of the staged changes.

---

## Push Main Branch to GitHub

```bash
git push -u origin main
```

Purpose:
Pushes the local main branch to GitHub.

The `-u` option sets upstream tracking so future pushes can be done using only:

```bash
git push
```

---

# Branching

## Create New Branch and Switch

```bash
git checkout -b Git-GitHub
```

Purpose:
Creates a new branch named Git-GitHub and switches to it immediately.

---

## List Local Branches

```bash
git branch
```

Purpose:
Displays all branches available in the local repository.

Example:

```text
* main
  AWS
  Git-GitHub
```

The * indicates the current branch.

---

## Switch Branch

```bash
git checkout Git-GitHub
```

or

```bash
git switch <branchname>
```

Purpose:
Switches from the current branch to another existing branch.

---

# Remote Repository

## View Connected Remote Repository

```bash
git remote -v
```

Purpose:
Displays the remote GitHub repository connected to the local repository.

Example:

```text
origin  https://github.com/prabha123-git/Self-Note.git (fetch)
origin  https://github.com/prabha123-git/Self-Note.git (push)
```

---

# Branch Management

## List Local Branches

```bash
git branch
```

Purpose:
Lists all local branches.

---

## List Remote Branches

```bash
git branch -r
```

Purpose:
Lists all branches available in the remote GitHub repository.

Example:

```text
origin/main
origin/Dev
origin/AWS
origin/Terraform
```

---

## Delete Branch from Remote Repository

```bash
git push origin --delete test
```

Purpose:
Deletes the branch named "test" from GitHub.

---

## Delete Branch from Local Repository

```bash
git branch -d test
```

Purpose:
Deletes the branch named "test" from the local system.

Note:
The branch must be fully merged before deletion.

---

# Fetch Updates

## Remove Stale Remote References

```bash
git fetch --prune
```

Purpose:
Removes references to remote branches that no longer exist in GitHub.

Useful after deleting branches from GitHub.

Example:

Before:

```text
origin/main
origin/test
```

After deleting test branch from GitHub:

```bash
git fetch --prune
```

Output:

```text
origin/main
```

---

## Real Example Flow

```bash
git clone https://github.com/prabha123-git/Self-Note.git

git branch

git checkout -b AWS

git add .

git commit -m "Added IAM notes"

git push -u origin AWS

git branch -r

git fetch --prune
```

Purpose:
A complete workflow for creating a branch, making changes, and pushing them to GitHub.