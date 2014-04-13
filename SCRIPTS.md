# Scripnix Script Descriptions

Summary descriptions of the scripts making up the Scripnix project. Phew. Try saying that five times fast.

The following was generated on 2014-04-13 by the `describe-scripnix` script.

### archive

Usage: `archive`

Archive all directories symlinked under $ARCHIVE_PATHS to the $ARCHIVE_DIR
directory using the name of the symlink as the compressed tarball's filename.
Directories or files listed in the ARCHIVE_EXCLUSIONS file will be skipped.

### archive-mysql

Usage: `archive-mysql`

Archive each MySQL database under the $ARCHIVE_MYSQL_DIR directory separately
into a compressed tarball in the $ARCHIVE_DIR directory.

### archive-pgsql

Usage: `archive-pgsql`

Archive each PostgreSQL database seperately into a compressed tarball in the
$ARCHIVE_DIR directory. The user running this script must be a PostgreSQL
superuser with an ident logon.

### archive-svn

Usage: `archive-svn`

Archive a dump of each Subversion respository under the $SVN_REPO_DIR
directory into a compressed tarball in the $ARCHIVE_DIR directory.

### backup-file

Usage: `backup-file <file>[...]`

"Backup" the named file or files by making copies of them using each file's
last modified date (yyyymmdd) as the extension.

### check-svn-status

Usage: `check-svn-status`

Quickly report the status of all known Subversion projects.

### clean-deb-leftovers

Usage: `clean-deb-leftovers`

Remove orphaned packages and unneeded package files from Debian-like
distributions.

### command-for-pid

Usage: `command-for-pid <pid>`

Look up the command line for the given Process ID (PID).

### control-service

Usage: `control-service <rc init script> <action>`

Execute the given rc init script with the given action.

### convert-html-to-markdown

Usage: `convert-html-to-markdown <html-file>[...]`

Convert the specified HTML files into Markdown text-format equivalents in the
current working directory. The file extension will be .md.txt.

Requires the html2text.py Python script by Aaron Swartz to convert from HTML
to Markdown text `<http://www.aaronsw.com/2002/html2text/>`.

### count-php-loc

Usage: `count-php-loc [<directory>]`

Count lines of PHP-related code in the current or given directory, excluding
blank lines and single-line comments.

### count-web-hits

Usage: `count-web-hits [<regexp>] [<!regexp>]`

Count valid (HTTP 200 OK) web hits by domain name. Optionally filter log
entries with a regular expression and, if given, discard entries that match
a second regular expression.

### count-web-page-hits

Usage: `count-web-page-hits [<regexp>] [<!regexp>]`

Count hits to web pages. Optionally filter log entries with a regular
expression and, if given, discard entries that match a second regular
expression.

### count-web-page-misses

Usage: `count-web-page-misses`

Count invalid (HTTP 40x) web requests.

### create-svn-repository

Usage: `create-svn-repository <repository-name> [<svnserve-account>]`

Create an empty Subversion repository with default security settings. An
account that will own the repository files may also be specified (default is
svnserve) but must already exist. If you want to use a shared password database
file for multiple repositories, override the $SVN_PASSWD_DB configuration
variable with the path to that file. You should then restrict access to that
file to only the svnserve account that you are using (read-only).

### decrypt-from-dvd

Usage: `decrypt-from-dvd <source-directory> <destination-directory> <archive-name>`

Decrypt the previously encrypted (with encrypt-for-dvd) files in the the
source directory that begin with the given archive name and place the results
in the destination directory, which will be created if necessary, and should
be empty otherwise.

### describe-scripnix

Usage: `describe-scripnix`

Generate descriptions of all Scripnix scripts formatted for Google Code wiki
pages.

### encrypt-for-dvd

Usage: `encrypt-for-dvd <source-directory-path> <destination-directory> <archive-name>`

Encrypt the contents of the given source directory into large date-stamped
files in the destination directory that are suitable for burning to a 4.7GiB
DVD (ISO 9660). Because the DVD format has a maximum file size of less than
4GiB, the output files are limited to 2,200MB so that two can fit on each disc.
Use the decrypt-from-dvd script to reverse the process.

### find-directory-piggies

Usage: `find-directory-piggies [<minimum-directory-size-in-mb>]`

Find all lowest-level directories larger than the given size (MB), or 100MB if
not specified.

### find-grep

Usage: `find-grep [<directory>] <regexp>`

Search through the file contents in the specified directory (or the current
directory if not given), and below, for lines that match the given regular
expression.

### find-links

Usage: `find-links <file>`

Display all hard and soft links to the given file.

### find-piggies

Usage: `find-piggies [<minimum-file-size-in-mb>]`

Find all files larger than the given size (MB), or 100MB if not specified.

### find-recent-files

Usage: `find-recent-files`

Find all files changed on the server within the last hour.

### hyphenate

Usage: `hyphenate`

Translate the given filenames (via stdin) into their equivalent,
filesystem-safe, hyphenated versions.

### include-filetype

Usage: `include-filetype <filetype>[...]`

Filter out any files from stdin that don't match one of the given filetypes:
file, directory, link (symbolic), pipe, socket, character (device), and block
(device). Filetypes may be specified by name or first-letter abbreviation.

### install-scripnix

Usage: `install-scripnix`

"Install" Scripnix by setting up the systemwide configuration directory and
files. Permissions are as restrictive as possible. The script can be re-run
without altering existing files or directories, but permissions will be reset.

### is-network-up

Usage: `is-network-up [<host>]`

Detects whether a network host is reachable via ICMP ping. Uses the local
network gateway unless a specific host's IP is specified. Return code will be
zero for a successful ping.

### is-remote-cnx

Usage: `is-remote-cnx`

Detects whether this terminal is a remote SSH connection. Exit code will be
zero if it is.

### leading-column

Usage: `leading-column [<delimiter>]`

Extract a unique list of the first column of the given input. Optionally, use
the specified delimiter instead of space.

### locate-ll

Usage: `locate-ll <regexp>`

Locate matching files and display in coloured long-list format.

### locate-same

Usage: `locate-same <regexp>`

Locate matching files and display identical files grouped together.

### publish-markdown

Usage: `publish-markdown [<style>] <Markdown-text-file>`

Convert the given Markdown text file into print-ready HTML and PDF files using
the supporting files from the specified style, or the default style if
unspecified. Markdown source files should ideally use the .md.txt extension.
The Markdown conversion tool must be installed, and for PDF generation, the
wkhtmltopdf tool is required (it is skipped, otherwise). New styles can be
created using the default style (/etc/scripnix/style/default) as a template
and must be located under the PUBLISH_STYLE_DIR directory. If a style name
appears within an HTML comment in the first line of the Markdown file, that
style will be used as the default.

A style directory may contain some or all of the following files:

* header-prefix.html: The initial DOCTYPE, `<html>`, and `<head>` elements, ending
  an opening `<style>` tag.
* style*.css: One or more CSS files, that are inserted into the HTML in order.
* header-suffix.html: Begins with the closing `</style>` tag and includes any
  other `<head>` elements before closing `</head>` and opening `<body>`.
* footer.html: Includes any final elements before closing `</body>` and `</html>`.
* pre-markdown*.awk: One or more AWK files to process or filter the raw
  Markdown text before it is inserted into the HTML, run in order.
* post-markdown*.awk: One or more AWK files to process or filter the generated
  HTML document, run in order.
* suffix: The contents of this file will be inserted between the Markdown
  source filename and the file extension in generated HTML and PDF files.
* markdown.conf: the command-line switches to use for the markdown command.
* wkhtmltopdf.conf: the command-line switches to use for the wkhtmltopdf
  command.

Multiple styles may share the same files using links or symlinks. Because
multiple CSS files and AWK filters are permitted, a style may borrow just a
selection of another style's files, and even rearrange their order by
appropriately naming the links.

The optional placeholders `@@@TITLE@@@` and `@@@YEAR@@@` will be replaced with the
contents of the document's `<h1>` element, or the filename if not available, and
the current 4-digit year, respectively.

### remove-except

Usage: `remove-except <number-to-keep> [<filespec>]`

Remove all but a given number of files that match the provided filespec
(in quotes if wildcards are specified), so that the remaining files have the
most recent modification times. If the filespec is omitted, perform the
operation on all files in the current directory.

### remove-old

Usage: `remove-old <days> <directory> <filespec>`

Remove files under the given directory and matching the supplied filespec
(in quotes if wildcards are specified) that are at least the given
number of days old. The date calculation uses midnight of the current day
so yesterday would be 1 day old, and any file created after midnight today
would be 0 days old.

If a file is being written every day and you only want to keep X of them at a
time, then it may be more intuitive to just use the value X for the days
parameter.

For example, the command:

remove-old 2 /var/log/ 'apache*log'

would delete all files matching "apache*log" in or under the /var/log/
directory that are at least 2 days old (created on or before the day before
yesterday). Or, if these log files are written once each day (scheduled before
this script runs) then you should have just 2 remaining.

### repeat

Usage: `repeat <delay> <command...>`

Repeat a simple command every N seconds.

### replace-in-files

Usage: `replace-in-files <regexp> <file>[...]`

Execute the given sed-compatible (extended regexp syntax) search and replace
operation on all of the files specified. If a change is made, a dated copy of
the original is stored.

### restart-ntp

Usage: `restart-ntp`

Restart the NTP time service, forcing a time synchronization while the
service is stopped.

### run-once-if

Usage: `run-once-if <condition> <command>`

Run the given command at most once per day, provided the specified condition
is true (returns an exit code of 0).

For example, to synchronize the time once per day, but only if the network
is operational, you could schedule the following as a command in your
[ana]crontab file to run every hour:

run-once-if is-network-up 'ntpdate time.nrc.ca'

It will only run once each day, just as soon as the network is up.

### show-cron-jobs

Usage: `show-cron-jobs`

Display a consolidated table of all scheduled cron jobs.

### show-deb-leftovers

Usage: `show-deb-leftovers`

Display orphaned packages and unneeded package files from Debian-like
distributions.

### sync-svn-mirrors

Usage: `sync-svn-mirrors`

Synchronize all mirrored Subversion repositories on the local machine. The
script assumes that all such repositories have a suffix of "mirror".

### top-level-parent-pid

Usage: `top-level-parent-pid [<pid>]`

Look up the top-level parent Process ID (PID) for the given PID. If none is
specified, use the current PID as the starting point.

### truncate-domain

Usage: `truncate-domain`

Truncate a fully qualified domain name by removing the host name part. Only
the first column of the input is truncated.

### unique-name

Usage: `unique-name <directory> <filename> [<extension>]`

Find a unique name within the given directory for the specified file,
appending a hyphen and number, as necessary. Insert the appendix before
the file extension, if supplied.

