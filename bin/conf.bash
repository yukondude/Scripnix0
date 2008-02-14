# $Id$
#
# Configuration variables. Do not edit these. Instead, override values as needed
# in user-conf.bash.
#
# This file is a part of Scripnix <http://scripnix.googlecode.com/>.
# Written in 2008 by Dave Rogers <yukondude-strudel-gmail-fullstop-com>.
# This script is released into the Public Domain.

# Apache HTTPD log file.
APACHE_LOG='/var/log/apache2/access.log'

# Subversion respository parent directory.
SVN_REPO_DIR='/var/lib/svn'

# Exclusions from find searches.
FIND_PATH_EXCLUDE='-path /dev -prune -o -path /proc -prune -o -path /sys -prune -o'
FIND_RCS_EXCLUDE='-type d -name .svn -prune -o -type d -name CVS -prune -o'
