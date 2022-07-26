pkg:info "perl"
x assert stdout 'eval /home/mnnna/.x-cmd/.tmp/pkg/installed/perl/5.34.1.1/bin/perl -v' <<A
This is perl 5, version 34, subversion 1 (v5.34.1) built for x86_64-linux

Copyright 1987-2022, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl".  If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.
A

