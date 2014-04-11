#
# Common utility script definitions. All /usr/local/bin scripts should source
# this file.
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2007 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

scriproot="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

system_conf_dir='/etc/scripnix'
user_conf_dir="${HOME}/.scripnix"
conf_file='conf.bash'

# Set configuration variables, overriding as necessary.
source "${scriproot}/${conf_file}"
[[ -r "${system_conf_dir}/${conf_file}" ]] && source "${system_conf_dir}/${conf_file}"
[[ -r "${user_conf_dir}/${conf_file}" ]] && source "${user_conf_dir}/${conf_file}"

source "${scriproot}/func.bash"
source "${scriproot}/alias.bash"
