#!/usr/bin/env bash

em()
{
    args=""
    nw=false
    # check if emacsclient is already running
    if pgrep -U $(id -u) emacsclient > /dev/null; then running=true; fi

    # check if the user wants TUI mode
    for arg in "$@"; do
    	  if [ "$arg" = "-nw" ] || [ "$arg" = "-t" ] || [ "$arg" = "--tty" ]
	      then
    	      nw=true
    	  fi
    done

    # if called without arguments - open a new gui instance
    if [ "$#" -eq "0" ] || [ "$running" != true ]; then
	      args=(-c $args) 		# open emacsclient in a new window
    fi
    if [ "$#" -gt "0" ]; then
	      # if 'em -' open standard input (e.g. pipe)
	      if [[ "$1" == "-" ]]; then
    	      TMP="$(mktemp /tmp/emacsstdin-XXX)"
    	      cat >$TMP
	          args=($args --eval '(let ((b (create-file-buffer "*stdin*"))) (switch-to-buffer b) (insert-file-contents "'${TMP}'") (delete-file "'${TMP}'") (x-urgent))')
	      else
	          args=($@ $args)
	      fi
    fi

    if $nw; then
	      emacsclient $args
    else
	      (nohup emacsclient $args > /dev/null 2>&1 &) > /dev/null
    fi
}

em $arg
