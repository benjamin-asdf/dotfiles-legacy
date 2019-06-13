function git-fuzzy-add --description 'fuzzy search git status and run git add'
    git ls-files -m -o --exclude-standard | fzf -m --print0 | xargs -0 -ot git add
end
