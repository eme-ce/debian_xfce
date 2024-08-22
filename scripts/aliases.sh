#!/bin/bash

cat <<EOF | tee ~/.bash_aliases
alias ll='ls -lrth --color=auto'
alias LL='ls -lArth --color=auto'
alias LA='ls -lARth --color=auto'
alias df='df -h'
alias top='htop'
EOF