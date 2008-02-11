# $Id$
#
# Common function definitions.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2007 by Dave Rogers <thedude-strudel-yukondude-fullstop-com>.
# This script is released into the Public Domain.

# Exit with error message if the count of command arguments does not fall into
# the expected range. Use -1 to indicate no minimum/maximum.
# Example call: check_arg_count ${0} ${#} 2 2 '<arg1> <arg2>'
function check_arg_count() {
    # Parameters:
    command=${1}
    arg_count=${2}
    min_count=${3}
    max_count=${4}
    usage=${5}

    if [ ${max_count} -lt 0 ] ; then
        max_count=9999 # infinity!
    fi

    if [ ${arg_count} -lt ${min_count} -o ${arg_count} -gt ${max_count} ] ; then
        echo_err "Usage:" $(basename ${command}) "${usage}"
        exit 1
    fi
}

# Echo to standard error.
function echo_err() {
    echo "$*" >&2
}

# Echo backslash-escaped forward-slashes.
function escape_slashes() {
    echo "$*" | sed 's/\//\\\//g'
}
