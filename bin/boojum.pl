#!/usr/bin/perl
use strict;
use warnings;

my @var = <STDIN>;
# print scalar @var;

# print scalar( <STDIN> );
my $job_count = scalar @var;
print $job_count;

