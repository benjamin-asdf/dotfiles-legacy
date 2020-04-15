#---------------------
#  DOCKER
#---------------------
alias dps='docker ps'
alias drun='docker run'
alias dkillall='docker kill $(docker ps -q)'
alias dcleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias dcleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias dclean='dcleanc || true && dcleani'
​
#---------------------
#  TOOLS
#---------------------
alias d='docker'
​
alias cls='clear'
alias zshrc='subl -w ~/.zshrc && zshre'
alias zshre='source ~/.zshrc'
alias pip='pip3'
alias less='less -FSRXc'   # Preferred 'less' implementation
# lr:  Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
​
#--------------------
#  GIT CONVENIENCE
#--------------------
alias gs='git status'
alias clgs='cls && gs'
alias gmc='git merge --continue'
alias gsl='gs | less'
alias gcon='git branch -r -a --contains' # git branch --contains <commit> # lists all branches that contain <commit>
alias gcemp='git commit --allow-empty -m ' #<do /test>
alias gctest='gcemp "do /test" && git push origin'
alias gcandroid='gl && gcemp '/android' && gp'
alias grhh1='grhh @~1'
alias gd1='gd --minimal @~1..HEAD'
alias glos="glo --stat"
alias gdev="cd $REPO && gco develop"
alias gtools="cd $REPO && gco cos-tools"
alias gcos="cd $REPO && gco $@"
​
# ANDROID
alias mon='adb shell input keyevent KEYCODE_WAKEUP'
alias mof='adb shell input keyevent KEYCODE_SLEEP'
​
export COS_APP_ID='com.gamingforgood.clashofstreamers'
alias stopcos="adb shell am force-stop $COS_APP_ID"