# $Id$
#
# Command alias definitions.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2008 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'

alias l='ls --color=tty'
alias ls='ls --color=tty'
alias ll='ls -l --color=tty --time-style=long-iso'
alias la='ls -l --almost-all --color=tty --time-style=long-iso'
alias lh='ls -l --human-readable --color=tty --time-style=long-iso'
alias lm='ls -l --block-size=1024K --color=tty --time-style=long-iso'
alias lt='ls -lt --color=tty --time-style=long-iso'
alias lrt='ls -lrt --color=tty --time-style=long-iso'

alias ltt='last -a | tac | tail -n20'
alias pe='ps -eFlT'
alias px='ps aux'
alias nst='netstat --all --tcp --udp --numeric'

alias degrep='egrep --invert-match'
alias degrep-rcs="degrep '\/(\.svn|CVS)'"
alias degrep-rcs0="degrep --null-data '\/(\.svn|CVS)'"

alias set-svn-id="svn propset svn:keywords \"Id\""

alias ift='sudo iftop -nNPB'
alias ipt='sudo iptables -nvL'
alias rkup='sudo rkhunter --propupd'

# Necessary to enable aliases in shell scripts.
shopt -s expand_aliases
