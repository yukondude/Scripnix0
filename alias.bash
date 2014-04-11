# $Id$
#
# Command alias definitions.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2008 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

if [[ "${OS}" == 'darwin' ]]; then
	alias l='ls -G'
	alias ls='ls -G'
	alias ll='ls -Gl'
	alias la='ls -AGl'
	alias lh='ls -Ghl'
	alias lt='ls -Glt'
	alias lrt='ls -Glrt'
	
	alias nst='netstat -an -f inet'
else
	alias l='ls -v --color=tty'
	alias ls='ls -v --color=tty'
	alias ll='ls -lv --color=tty --time-style=long-iso'
	alias la='ls -lv --almost-all --color=tty --time-style=long-iso'
	alias lh='ls -lv --human-readable --color=tty --time-style=long-iso'
	alias lm='ls -lv --block-size=1024K --color=tty --time-style=long-iso'
	alias lt='ls -lt --color=tty --time-style=long-iso'
	alias lrt='ls -lrt --color=tty --time-style=long-iso'

	alias ltt='last -a | tac | tail -n20'
	alias nst='netstat --all --tcp --udp --numeric'

	alias ift='sudo iftop -nNPB'
	alias ipt='sudo iptables -nvL'
	alias rkup='sudo rkhunter --propupd'
fi

alias pe='ps -eFlT'
alias px='ps aux'

alias degrep='egrep --invert-match'
alias degrep-rcs="degrep '\/(\.svn|CVS)'"
alias degrep-rcs0="degrep --null-data '\/(\.svn|CVS)'"

alias set-svn-id="svn propset svn:keywords \"Id\""

# Necessary to enable aliases in shell scripts.
shopt -s expand_aliases
