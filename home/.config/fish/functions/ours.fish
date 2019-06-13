function ours --description 'Git take ours'

		if test -z $argv
				echo "Please first give a list of files to check out"
		else

				for file in $argv
						git checkout --ours $file
						and git add $file
				end

		end

end
