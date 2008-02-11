# $Id$
#
# Root-user interactive shell configuration. ~/.bashrc should source this file.
# Overrides or extends any /bin/rc.bash definitions.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2007 by Dave Rogers <thedude-strudel-yukondude-fullstop-com>.
# This script is released into the Public Domain.

source /usr/local/bin/rc.bash

sbin_dir='/usr/local/sbin'
source "${sbin_dir}/sconf.bash"

# Override sconf.bash configuration variables as needed in suser-conf.bash.
[ -r "${sbin_dir}/suser-conf.bash" ] && source "${sbin_dir}/suser-conf.bash"

source "${sbin_dir}/sfunc.bash"
source "${sbin_dir}/salias.bash"
