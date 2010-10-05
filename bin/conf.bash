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

# Paths to HTML/Markdown conversion tools.
HTML_TO_MARKDOWN_COMMAND='/usr/bin/html2text.py'
MARKDOWN_TO_HTML_COMMAND='/usr/bin/markdown'

# Default NTP server for ntpdate command.
NTPDATE_SERVER='time.nrc.ca'

# Default parent directory for publish-related script styles.
PUBLISH_STYLE_DIR='/etc/scripnix/style'

# Subversion respository parent directory.
SVN_REPO_DIR='/var/lib/svn'
