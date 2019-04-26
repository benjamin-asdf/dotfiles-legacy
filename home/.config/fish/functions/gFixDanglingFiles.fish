function gFixDanglingFiles --description "Fix files that appear modified but don't go away after checkout"
		git config --global core.autocrlf false
		git rm --cached -r .
		git reset --hard
end
