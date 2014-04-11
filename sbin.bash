# $Id$
#
# Root-user utility script definitions. All /usr/local/sbin scripts should
# source this file.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2007 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

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
