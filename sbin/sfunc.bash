# $Id$
#
# Root-user function definitions.
#
# This file is a part of Scripnix <http://code.google.com/p/scripnix/>.
# Written in 2007 by Dave Rogers <thedude-strudel-yukondude-fullstop-com>.
# This script is released into the Public Domain.

function require_root() {
    if [ $(id --user) -ne 0 ] ; then
        echo_err "Must be root to execute" $(basename ${0})"."
        exit 2
    fi
}
