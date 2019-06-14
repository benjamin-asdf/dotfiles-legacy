function gfz-unstage --description 'fuzzy search staged files and unstage'
    git ls-files --exclude-standard | fzf -m --print0 | xargs -0 git rm --cached
end
