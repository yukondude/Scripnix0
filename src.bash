# Root-user interactive shell configuration. ~/.bashrc should source this file.
# Overrides or extends any /bin/rc.bash definitions.
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2007 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

scriproot="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${scriproot}/rc.bash"
source "${scriproot}/sconf.bash"

# Override sconf.bash configuration variables as needed in suser-conf.bash.
[ -r "${scriproot}/suser-conf.bash" ] && source "${scriproot}/suser-conf.bash"

source "${scriproot}/sfunc.bash"
source "${scriproot}/salias.bash"
