#
# Interactive shell configuration. ~/.bashrc should source this file.
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2008 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

scriproot="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source $scriproot/bin.bash

# Don't logout after Ctrl+D.
set -o ignoreeof

# Colourful prompt.
if [[ $(id -u) -eq 0 ]]; then
    user_colour='\[\033[01;31m\]'
    user_prompt='#'
else
    user_colour='\[\033[01;32m\]'
    user_prompt='\$'
fi

host_name=$(hostname -s)

# Capitalize the host name for remote connections.
if [[ ${OS} != 'darwin' && is-remote-cnx ]]; then
    host_name=$(hostname -s | tr '[:lower:]' '[:upper:]')
fi

base_colour='\[\033[00m\]'
alt_colour='\[\033[01;34m\]'
export PS1="${user_colour}\u${alt_colour}@${host_name} ${user_colour}\w${alt_colour} \D{%H:%M:%S} ${user_colour}${user_prompt}${base_colour} "
