# $Id$
#
# Root-user command alias definitions. Overrides or extends any /bin/alias.bash
# definitions.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2007 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

alias apt-up='aptitude update && aptitude -Pr upgrade'
alias ipt='iptables -nvL'
alias nst='netstat -auntp'

# Necessary to enable aliases in shell scripts.
shopt -s expand_aliases
