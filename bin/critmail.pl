#!/usr/bin/perl
use strict;
use warnings;

use Getopt::Long;
use Pod::Usage;

GetOptions(
    "from=s"      => \( my $from ),
    "subject=s"   => \( my $subject ),
    "to=s"        => \( my $to ),
);
pod2usage unless $from and $subject and $to;

open( MAIL, '|/usr/sbin/sendmail -oi -t' )
    or die "Cannot open/fork sendmail: $!";
print MAIL "To: $to\nSubject: $subject\n\nSENDER: $from\n";
close MAIL
    or die "Cannot close sendmail: $!"; 

__END__
=head1 NAME

critmail.pl -- a perl script to accept commandline information about an email and forward those to a mobile device.

=head1 SYNOPSIS

    ./critmail.pl [options]

    --from      sender address
    --subject   original subject
    --to        mobile device email
