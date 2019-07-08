function ef --description 'start emacsclient on a fuzzy searched file'
  emacsclient -n (fd $argv  -t f . | fzf)
end
