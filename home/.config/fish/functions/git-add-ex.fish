# TODO
function git-add-ex --description "add files by extension"
    set expr "\.$argv"
    echo expr is $expr
	  # git status --porcelain | rg -e \.$argv | sed 's|^ M ||' | xargs -r git add
	  git status --porcelain | rg -e $expr
end
