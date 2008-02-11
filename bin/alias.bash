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

alias ls='ls --color=tty'
alias ll='ls -l --color=tty'
alias la='ls -l --almost-all --color=tty'
alias lh='ls -l --human-readable --color=tty'
alias lt='ls -lt --color=tty'

alias pe='ps -eFlT'
alias px='ps aux'
alias nst='netstat --all --tcp --udp --numeric'

alias degrep='egrep --invert-match'
alias degrep-source-control="degrep '\/(\.svn|CVS)'"

# Necessary to enable aliases in shell scripts.
shopt -s expand_aliases
