# emacs editor
set -gx EDITOR "emacsclient -t"
set -gx VISUAL "emacsclient -a emacs"

# fzf
set -gx FZF_DEFAULT_OPTS "--height 40% --layout=reverse --border"
set -gx FZF_DEFAULT_COMMAND "fd --type f"

set -x PATH $PATH ~/.scripts/

thefuck --alias | source
