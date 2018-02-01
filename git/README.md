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

## Cherry-Picking across branches

Verify range
```
git log origin/sites/anvil1 2e524c071144195a0018ad8f0352e924918eac11..9652326f7b07a5b4c615c2565878a309fa623cfc --reverse --oneline
git log origin/sites/anvil1 2e524c071144195a0018ad8f0352e924918eac11..9652326f7b07a5b4c615c2565878a309fa623cfc --reverse --pretty=%H
```

commit cherry-picks
```
for commit in $(git log origin/sites/anvil1 2e524c071144195a0018ad8f0352e924918eac11..9652326f7b07a5b4c615c2565878a309fa623cfc --reverse --pretty=%H); do git cherry-pick $commit; read -s -k '?Press any key to continue.'; done
```
