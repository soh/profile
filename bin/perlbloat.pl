#!/usr/bin/perl
# from Practical mod_perl
# file:///Users/soh/help/perl/mod_perl/ch13_05.html
use strict;
use warnings;

use GTop ( );

my $gtop = GTop->new;
my $before = $gtop->proc_mem($$)->size;

for (@ARGV) {
    if (eval "require $_") {
        eval { $_->import; };
    }
    else {
        eval $_;
        die $@ if $@;
    }
}

my $after = $gtop->proc_mem($$)->size;
print "@ARGV added " . GTop::size_string($after - $before) . "\n";

