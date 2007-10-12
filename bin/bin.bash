# $Id$
#
# Common utility script definitions.
# All /usr/local/[s]bin scripts should source this file.
#
# This file is a part of Scripnix <http://code.google.com/p/scripnix/>.
# Written in 2007 by Dave Rogers <thedude-strudel-yukondude-fullstop-com>.
# This script is released into the Public Domain.

source /usr/local/bin/alias.bash

function echo_err() {
    # Echo to stderr.
    echo "$*" >&2
}
