# $Id$
#
# Common utility script definitions. All /usr/local/bin scripts should source
# this file.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2007 by Dave Rogers <thedude-strudel-yukondude-fullstop-com>.
# This script is released into the Public Domain.

bin_dir='/usr/local/bin'

source "${bin_dir}/conf.bash"

# Override conf.bash configuration variables as needed in user-conf.bash.
[ -r "${bin_dir}/user-conf.bash" ] && source "${bin_dir}/user-conf.bash"

source "${bin_dir}/func.bash"
source "${bin_dir}/alias.bash"
