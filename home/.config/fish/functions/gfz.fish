function gfz --description 'fuzzy search git files and output to stdout'
    git ls-files -m -o -d --exclude-standard | fzf -m --print0
end
