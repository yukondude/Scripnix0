# $Id$
#
# Root-user utility script definitions. All /usr/local/sbin scripts should
# source this file.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2007 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

source /usr/local/bin/bin.bash

sbin_dir='/usr/local/sbin'
system_sconf_dir='/etc/scripnix'
sconf_file='sconf.bash'

# Set configuration variables, overriding as necessary.
source "${sbin_dir}/${sconf_file}"
[[ -r "${system_sconf_dir}/${sconf_file}" ]] && source "${system_sconf_dir}/${sconf_file}"

source "${sbin_dir}/sfunc.bash"
source "${sbin_dir}/salias.bash"

require_root
