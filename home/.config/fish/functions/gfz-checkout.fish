function gfz-checkout --description 'fuzzy search git changed files and run git checkout'
    gfz | xargs -0 -ot git checkout
end
