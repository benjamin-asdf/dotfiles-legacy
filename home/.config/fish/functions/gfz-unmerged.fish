function gfz-unmerged --description 'fuzzy search unmerged git files and output to stdout'
    git ls-files -u --exclude-standard | awk '{print $4}' | fzf -m --print0
end
