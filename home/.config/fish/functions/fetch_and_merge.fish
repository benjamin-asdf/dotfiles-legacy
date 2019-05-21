function fetch_and_merge --description 'git fetch, pull dev and merge dev'
    git fetch && fetchdev && mergedev
end
