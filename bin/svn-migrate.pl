#!/usr/bin/perl

chomp( my $oldpath = `svn info . | grep ^URL` );
$oldpath =~ s/^.*URL:\s*//;
my $newpath = $oldpath;
$newpath =~ s,prefect.opensourcery.com:444/svn,svn.opensourcery.com,;
print "Old: $oldpath\nNew: $newpath\n";
my $command = "svn sw --relocate \"$oldpath\" \"$newpath\"";
print "Command: $command\n";
system( $command ) and die( "$!\n" );
