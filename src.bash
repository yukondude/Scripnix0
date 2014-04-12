# Root-user interactive shell configuration. ~/.bashrc should source this file.
# Overrides or extends any /bin/rc.bash definitions.
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2007 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

source /usr/local/bin/rc.bash

sbin_dir='/usr/local/sbin'
source "${sbin_dir}/sconf.bash"

# Override sconf.bash configuration variables as needed in suser-conf.bash.
[ -r "${sbin_dir}/suser-conf.bash" ] && source "${sbin_dir}/suser-conf.bash"

source "${sbin_dir}/sfunc.bash"
source "${sbin_dir}/salias.bash"
