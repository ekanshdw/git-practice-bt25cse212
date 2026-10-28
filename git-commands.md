# Git Commands Used

## Setup

| Command | Purpose |
|---------|---------|
| `git --version` | Check that Git is installed |
| `git config --global user.name "Name"` | Set the name stored in my commits |
| `git config --global user.email "email"` | Set the email stored in my commits |
| `git clone URL` | Copy the GitHub repository to my computer |
| `git remote -v` | Show the remote (GitHub) URL linked to the repo |

## Everyday workflow

| Command | Purpose |
|---------|---------|
| `git status` | See which files are changed, staged or untracked |
| `git add FILE` | Stage a file for the next commit |
| `git commit -m "message"` | Save the staged changes with a message |
| `git log --oneline --graph --all` | Show the commit history as a short graph |
| `git diff` / `git diff --staged` | See unstaged / staged changes |

## Branches and merging

| Command | Purpose |
|---------|---------|
| `git switch -c feature/NAME` | Create a new branch and move to it |
| `git switch main` | Go back to the main branch |
| `git merge BRANCH` | Merge another branch into the current one |
| `git branch -d BRANCH` | Delete a branch that is already merged |

## Working with GitHub

| Command | Purpose |
|---------|---------|
| `git push -u origin BRANCH` | Upload a branch to GitHub and remember it as upstream |
| `git fetch origin` | Download new work from GitHub without changing my files |
| `git pull --ff-only` | Update my branch with GitHub's version (fast-forward only) |

## Recovery commands practised

| Command | Purpose |
|---------|---------|
| `git restore --staged FILE` | Unstage a file but keep my edits |
| `git restore FILE` | Throw away unstaged edits in a file |
| `git revert HEAD` | Undo the last commit by making a new commit |
| `git stash push -m "msg"` / `git stash pop` | Put unfinished work aside and bring it back |
| `git tag -a v1.0 -m "msg"` | Mark a release |

## Merge conflict I encountered (Exercise 5)

**What happened:** I created `mode.txt` on `main` with the line `Lab mode: pending`. Then I made two branches from `main`:
- `feature/mode-online` changed the line to `Lab mode: online`
- `feature/mode-classroom` changed the same line to `Lab mode: classroom`

I merged the first pull request into `main` without any problem. When I opened the second pull request, GitHub said **"This branch has conflicts that must be resolved"**, because both branches changed the same line of the same file.

**How I resolved it:**
1. `git switch feature/mode-classroom`
2. `git fetch origin`
3. `git merge origin/main` - Git stopped with `CONFLICT (content): Merge conflict in mode.txt`
4. Opened `mode.txt`, which contained the markers `<<<<<<<`, `=======` and `>>>>>>>` with both versions.
5. Deleted the markers and wrote one agreed line: `Lab mode: hybrid`
6. `git add mode.txt`, then `git commit -m "Resolve merge conflict: use hybrid mode"`
7. `git push` - the pull request became mergeable and I merged it.

**What I learned:** Git cannot decide which change is correct when two branches edit the same line, so a person has to read both versions and decide the final text. I should also test the result after resolving.
