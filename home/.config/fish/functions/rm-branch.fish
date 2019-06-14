function rm-branch --description "removes both local and remote branch"
		git branch -D $argv
		git push --delete $argv
end
