# Root-user configuration variables. Do not edit these. Instead, override
# values as needed in /etc/scripnix/sconf.bash
#
# This file is a part of Scripnix <https://github.com/yukondude/Scripnix/>.
# Written in 2007 by Dave Rogers <yukondude.com>
# This is free and unencumbered software released into the public domain.
# Refer to the LICENCE file for the not-so-fine print.

ARCHIVE_DIR='/var/archive'
ARCHIVE_EXCLUSIONS='/etc/scripnix/archive-exclusions'
ARCHIVE_PATH_DIR='/etc/scripnix/archive-paths'

MYSQL_DB_DIR='/var/lib/mysql'
MYSQL_DUMP_FILE='mysql-dump.tar'

PGSQL_DUMP_FILE='pgsql-dump.tar'

RC_DIR='/etc/init.d'

SVN_DUMP_FILE='dump.svn.gz'
SVN_REPOSITORIES_DUMP_FILE='svn-dump.tar'
SVN_PASSWD_DB='passwd'
SVN_REALM=''

SYSTEM_CRONTAB='/etc/crontab'
SYSTEM_CRONDIR='/etc/cron.d'
