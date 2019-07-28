# git
alias fetchdev="git fetch origin develop:develop"
alias mergedev='git merge develop'
alias gcom='git commit -m'
alias gcomall='git add --all && git commit -m'

alias gpl="git pull"
alias gpu="git push"
alias gitInit=gitInit.sh

alias gx=gitx.sh # "*." "" $*
alias gxa="gx add"
alias gxc="gx checkout"
alias gxr="gx reset"
alias gxcm="gxc mat"
alias gxac="gxa cs"
alias cmt=cmt.sh
alias cscmt="gxac && cmt"

alias gd=gitd.sh # "*" "/*" $*
alias gda="gd add"
alias gdc="gd checkout"
alias gdr="gd reset"

alias gf=gitf.sh # "*/" ".*" $*
alias gfa="gf add"
alias gfc="gf checkout"
alias gfr="gf reset"

# emacs

alias emax="emacsclient -t"
alias emacsc="emacsclient -a emacs"

# fd
alias fd="fdfind"
