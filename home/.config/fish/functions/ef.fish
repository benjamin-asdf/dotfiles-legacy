function ef --description 'start emacsclient on a fuzzy searched file'
	emacsclient -n (fzf --height 40%)
end
