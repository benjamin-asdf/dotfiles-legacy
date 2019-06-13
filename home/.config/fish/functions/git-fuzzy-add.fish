function git-fuzzy-add --description 'fuzzy search git status and run git add'
  git status --porcelain | fzf | awk '{print $2}' | git add
end
