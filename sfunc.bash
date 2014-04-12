# Root-user function definitions.
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2007 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

function require_root() {
    if [ $(id -u) -ne 0 ] ; then
        echo_err "Must be root to execute" $(basename ${0})"."
        exit 2
    fi
}
