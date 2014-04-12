# Root-user utility script definitions. All root-user scripts source this file.
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2007 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

scriproot="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $scriproot/bin.bash

system_sconf_dir='/etc/scripnix'
sconf_file='sconf.bash'

# Set configuration variables, overriding as necessary.
source "${scriproot}/${sconf_file}"
[[ -r "${system_sconf_dir}/${sconf_file}" ]] && source "${system_sconf_dir}/${sconf_file}"

source "${scriproot}/sfunc.bash"
source "${scriproot}/salias.bash"

require_root
