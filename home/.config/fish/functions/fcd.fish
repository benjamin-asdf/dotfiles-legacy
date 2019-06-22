function fcd --description 'fuzzy cd into a directory'
    cd (fd $argv  -t d . | fzf)
end
