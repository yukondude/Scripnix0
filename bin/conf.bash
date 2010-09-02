# $Id$
#
# Configuration variables. Do not edit these. Instead, override values as needed
# in /etc/scripnix/conf.bash or ~/.scripnix/conf.bash
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2008 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

# Single tab character. Annoyingly necessary at times.
TAB=$(echo -en "\t")

# Temporary directory (to which pretty much every user has write permissions).
TMP_DIR='/tmp'

# Apache HTTPD log file.
APACHE_LOG='/var/log/apache2/access.log'

# Exclusions from find searches.
FIND_PATH_EXCLUDE='( -path /dev -or -path /proc -or -path /sys ) -prune'
FIND_SVN_PATH_EXCLUDE='-path /dev -prune'

# Default NTP server for ntpdate command.
NTPDATE_SERVER='time.nrc.ca'

# Subversion respository parent directory.
SVN_REPO_DIR='/var/lib/svn'
