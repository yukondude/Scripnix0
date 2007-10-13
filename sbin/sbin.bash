# $Id$
#
# Common root-user utility definitions.
# All /usr/local/sbin scripts should source this file.
#
# This file is a part of Scripnix <http://code.google.com/p/scripnix/>.
# Written in 2007 by Dave Rogers <thedude-strudel-yukondude-fullstop-com>.
# This script is released into the Public Domain.

source /usr/local/bin/bin.bash

# Only root may execute sbin scripts.
if [ $(id -u) -ne 0 ] ; then
    echo_err "Must be root to execute" $(basename $0)"."
    exit 1
fi

# Configuration values. Adjust the following as needed.
ARCHIVE_DIR="/var/archive"
ARCHIVE_PATHS="${ARCHIVE_DIR}/archive-paths"
ARCHIVE_MYSQL_DIR="/var/lib/mysql"
ARCHIVE_SVN_DIR="/var/lib/svn"
RC_DIR="/etc/init.d"
