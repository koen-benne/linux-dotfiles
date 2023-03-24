#!/bin/env bash
# fast tmuxing

tmux_running=$(pgrep tmux)

if [ $1 = "open" ]; then
  if [ -z $tmux_running ]; then
    echo "No tmux sessions running"
    exit 0
  fi
  sesh=$(tmux list-sessions | fzf-tmux | cut -d ":" -f 1)
  if [ -z "${TMUX}" ]; then
    tmux attach-session -t ${sesh}
  else
    tmux switch-client -t ${sesh}
  fi
elif [ $1 = "close" ]; then
  if [ -z $tmux_running ]; then
    echo "No tmux sessions running"
    exit 0
  elif [ -n $2 ]; then
    tmux kill-session -t ${2}
    echo "Session ${2} closed"
  else
    sesh=$(tmux list-sessions | fzf-tmux | cut -d ":" -f 1)
    tmux kill-session -t ${sesh}
    echo "Session ${sesh} closed"
  fi
elif [ $1 = "new" ]; then
  if [ -z $2 ]; then
    echo "Please provide a name for the new session"
    exit 1
  fi
  tmux new-session -s ${2}
elif [ $1 = "project" ]; then
  proj_dirs=${HOME}/Documents/coding/ #${HOME}/.dotfiles/
  # project=$(find $proj_dirs -name ".git" -mindepth=1 -maxdepth=1 -type d | sed 's/\/.git//g' | fzf-tmux)
  project=$(find $proj_dirs -mindepth 1 -maxdepth 1 -type d | fzf-tmux)
  proj_name=$(basename ${project})
  tmux new-session -s ${proj_name} -c ${project} -d
  tmux send-keys -t ${proj_name} "nvim" C-m
  if [ -z "${TMUX}" ]; then
    tmux attach-session -t ${proj_name}
  else
    tmux switch-client -t ${proj_name}
  fi
else
  echo "Usage: tmuxing [open|close|new|project|list]"
  exit 1
fi

