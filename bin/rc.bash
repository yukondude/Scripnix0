# $Id$
#
# Interactive shell configuration. ~/.bashrc should source this file.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2008 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

source /usr/local/bin/bin.bash

# Don't logout after Ctrl+D.
set -o ignoreeof

# Colourful prompt.
if [[ $(id --user) -eq 0 ]]; then
    user_colour='\[\033[01;31m\]'
    user_prompt='#'
else
    user_colour='\[\033[01;32m\]'
    user_prompt='\$'
fi

host_name=$(hostname)

# Capitalize the host name for remote connections.
if is-remote-cnx; then
    host_name=$(hostname | tr '[:lower:]' '[:upper:]')
fi

dir_colour='\[\033[01;34m\]'
base_colour='\[\033[00m\]'
export PS1="${user_colour}\u${dir_colour}@${host_name} \w ${user_colour}${user_prompt}${base_colour} "
