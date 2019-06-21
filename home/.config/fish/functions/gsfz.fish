function gsfz --description 'fuzzy search git status and put into standard output'
    git status --porcelain | awk '{print $2}' | fzf -m --print0
end
