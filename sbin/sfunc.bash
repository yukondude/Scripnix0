# $Id$
#
# Root-user function definitions.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2007 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

function require_root() {
    if [ $(id --user) -ne 0 ] ; then
        echo_err "Must be root to execute" $(basename ${0})"."
        exit 2
    fi
}
