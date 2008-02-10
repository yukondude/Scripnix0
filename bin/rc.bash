# $Id$
#
# Interactive shell configuration. ~/.bashrc should source this file.
#
# This file is a part of Scripnix <http://code.google.com/p/scripnix/>.
# Written in 2008 by Dave Rogers <thedude-strudel-yukondude-fullstop-com>.
# This script is released into the Public Domain.

source /usr/local/bin/bin.bash

# Don't logout after Ctrl+D.
set -o ignoreeof

# Colourful prompt.
if [ $(id --user) -eq 0 ]; then
    user_colour='\[\033[01;31m\]'
    user_prompt='#'
else
    user_colour='\[\033[01;32m\]'
    user_prompt='\$'
fi

dir_colour='\[\033[01;34m\]'
base_colour='\[\033[00m\]'
export PS1="${base_colour}[${user_colour}\h${dir_colour} \w${base_colour}]${user_colour}${user_prompt}${base_colour} "
