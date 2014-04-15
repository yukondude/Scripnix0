Scripnix
========

Useful bash shell scripts for *NIX.
Useful to me, at any rate. YMMV.

Written between 2007 and 2014 by Dave Rogers <yukondude.com>.

This is free and unencumbered software released into the public domain.
Refer to the LICENCE file for the not-so-fine print.

BTW: Though hosted on GitHub, the project is maintained with Mercurial through
hg-git. In theory, that shouldn't make a lick of difference to Git folk.

Installation
------------

Download or clone the project's files to a single directory, such as
`/usr/local/scripnix/`.

Run the following command to set up the /etc/scripnix/ configuration
directory:

    $ sudo <install_path>/install-scripnix
	
If you don't have access to sudo, you can omit that step. You can always
override settings in your home folder's `.scripnix` file. See the `conf.bash`
and `sconf.bash` files for details.

To set up Scripnix in your path and enable the default shell configuration, run
these three commands:

    $ echo 'PATH="<install_path>:${PATH}"' >>~/.bashrc
    $ echo "source <install_path>/rc.bash" >>~/.bashrc
    $ source ~/.bashrc

Contents
--------

Run the `describe-scripnix` script for an up-to-date listing of all the scripts.
Or just read the
[script listing on GitHub](https://github.com/yukondude/Scripnix/blob/master/SCRIPTS.md).

Reporting Bugs
--------------

Report bugs through the Scripnix project's
[GitHub issues page](https://github.com/yukondude/Scripnix/issues).
