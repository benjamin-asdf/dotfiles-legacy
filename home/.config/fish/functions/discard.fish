function discard --description 'Git discard files matching a pattern'

		if test -z $argv[1]
				echo "Please first give a pattern"
		else
				
				set pattern $argv[1]

				set topdir (git rev-parse --show-toplevel)

				pushd $topdir

				gus | grep $pattern | xargs git checkout

				popd

		end

end
