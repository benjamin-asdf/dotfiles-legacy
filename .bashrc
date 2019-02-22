env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env

alias cdCos='cd "c:/CosEntitas/idlegame/IdleGame"'


# git aliases

alias gs='git status'
alias gfetcho='git fetch origin'
alias gch='git checkout'
alias chdev="gch develop"
alias gdiscardAll='git checkout .'
alias gdiscardShit='git checkout *.mat *.asset *.spriteatlas *.prefab'

alias fetchdev="git fetch origin develop:develop"
alias mergedev='git merge develop'
alias gcom='git commit -m'
alias gcomall='git add --all && git commit -m'
