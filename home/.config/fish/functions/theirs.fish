function theirs --description 'Git take theirs'

		if test -z $argv
				echo "Please first give a list of files to check out"
		else

				for file in $argv
						git checkout --theirs $file
						and git add $file
				end

		end

end
