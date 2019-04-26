function fcd --description 'fuzzy cd into a directory'
	cd (fd -t d . $argv[1] | fzf)
end
