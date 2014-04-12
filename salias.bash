# Root-user command alias definitions. Overrides or extends any /bin/alias.bash
# definitions.
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2007 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

alias apt-up='aptitude update && aptitude -Pr upgrade'
alias ift='iftop -nNPB'
alias ipt='iptables -nvL'
alias nst='netstat -auntp'
alias rkup='rkhunter --propupd'

# Necessary to enable aliases in shell scripts.
shopt -s expand_aliases
