function gfz-add --description 'fuzzy search git changed files and run git add'
    gfz | xargs -0 -ot git add
end
