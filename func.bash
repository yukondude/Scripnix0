#
# Common function definitions.
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2007 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

# Exit with error message if the count of command arguments does not fall into
# the expected range. Use -1 to indicate no minimum/maximum.
# Example call: check_arg_count ${0} ${#} 2 2 '<arg1> <arg2>' ${1}
function check_arg_count() {
    # Parameters:
    command=${1}
    arg_count=${2}
    min_count=${3}
    max_count=${4}
    usage=${5}
    first=${6}
    is_err=0

    if [[ ${max_count} -lt 0 ]] ; then
        max_count=9999 # infinity!
    fi

    if [[ -n ${first} ]] ; then
        if [[ ${first} == '-h' || ${first} == '--help' || ${first} == '?' || ${first} == '-?' ]] ; then
            is_err=1
        fi
    fi

    if [[ ${arg_count} -lt ${min_count} || ${arg_count} -gt ${max_count} || ${is_err} -ne 0 ]] ; then
        echo_err "Usage:" $(basename ${command}) "${usage}"
        echo >&2
        sed --quiet --regexp-extended --expression '/^#$/,/^#$/p' "${command}" |
            sed '/^#$/d' |
            cut -c3- >&2
        exit 1
    fi
}

# Collect switches from a file and return as a single space-delimited string
# (with redundant spaces stripped).
function collect_switches() {
    switch_file="${1}"
    if [[ ! -f "${switch_file}" ]] ; then exit 0 ; fi
    cat "${switch_file}" |
        tr '\n' ' ' |
        sed --expression 's/  +/ /g' --regexp-extended
}

# Echo to standard error.
function echo_err() {
    echo "$*" >&2
}

# Echo backslash-escaped forward-slashes.
function escape_slashes() {
    echo "$*" | sed 's/\//\\\//g'
}
