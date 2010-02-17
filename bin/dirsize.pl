#!/usr/bin/perl
use strict;
use warnings;

my $dir = $ARGV[ 0 ];
my( $count, $total, $file, $size );

opendir( BIN, $dir ) or die "Can't open $dir: $!";
while( defined( $file = readdir BIN )) {
        next if $file =~ /^\.\.?$/;
        $count++;
        $size = ( -s "$dir/$file" );
        $total += $size;
#         print "$file : $size\n";
    }
closedir( BIN );

$total = sprintf( "%.2f", $total/1024 );
# print "\nTOTAL: $total / $count\n";
print "$dir: $total / $count\n";
