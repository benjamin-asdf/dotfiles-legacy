function gus --description 'Git list unstaged files'

		set arg $argv[1]

		if test -z $arg
				set arg ""
		end

		switch $arg
				case '-[MDA]'
						set letters $arg
				case '*'
						set letters "MDA"
		end
				
		git status --porcelain |
				grep -e "^.[$letters]" |
				sed "s/^\s[$letters]\s//g"

end

