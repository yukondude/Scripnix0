# $Id$
#
# Command alias definitions.
#
# This file is a part of Scripnix <http://code.google.com/p/scripnix/>.
# Written in 2007 by Dave Rogers <thedude-strudel-yukondude-fullstop-com>.
# This script is released into the Public Domain.

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias ls='ls --color=tty'
alias ll='ls -l --color=tty'
alias la='ls -lA --color=tty'
alias lh='ls -lh --color=tty'
alias lt='ls -lt --color=tty'

alias pe='ps -eFlT'
alias px='ps aux'
alias nst='netstat -aunt'

alias degrep='egrep -v'
alias degrep-source-control="degrep '\/(\.svn|CVS)'"

# Necessary to enable aliases in shell scripts.
shopt -s expand_aliases
