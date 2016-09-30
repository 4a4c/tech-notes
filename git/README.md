  # git-info

Notes for git.

## Tools
[git cheatsheet](https://training.github.com/kit/downloads/github-git-cheat-sheet.pdf)

## Forking

Create fork
* https://help.github.com/articles/fork-a-repo/

Add upstream remote
* https://help.github.com/articles/configuring-a-remote-for-a-fork/

Synch fork
* https://help.github.com/articles/syncing-a-fork/

Rather than working in the master branch of the fork, create a "feature" branch and work there.

## Branches

Create branch

`git checkout -b 4a4c`

`git push --set-upstream origin 4a4c`

Delete branch

`git branch -d <branchName>`

`git push origin --delete <branchName>`

Pull from remote

`git pull upstream master`
