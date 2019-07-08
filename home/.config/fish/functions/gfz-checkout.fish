function gfz-checkout --description 'fuzzy search git changed files and run git checkout'
    gfz | xargs -0 -otr git checkout
end
