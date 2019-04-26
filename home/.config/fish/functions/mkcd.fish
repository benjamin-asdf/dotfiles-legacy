function mkcd --description 'make directory and immediately cd into it'
	mkdir -vp $argv[1] && cd $argv[1]
end
