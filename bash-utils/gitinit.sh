#!/bin/sh

git fetch

branches=$(git branch | grep "[^\*] ")
remoteBranches=$(git branch -r)

echo "$branches" | while read -r branch;
do
    originBranch="origin/$branch"
    if [[ ${remoteBranches} = *"$originBranch"* ]] && git merge-base --is-ancestor "$branch" "$originBranch"; then
        git fetch --quiet origin "$branch:$branch"
    fi
done

git gc --quiet --prune=now