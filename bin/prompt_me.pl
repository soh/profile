#!/usr/bin/perl
use strict;
use warnings;

# TODO
#  - detect if running remotely : needed?
#  - detect if running on a console

### DEFINE COLORS
my %c = (
    black    => '\[\033[0;30m\]',
    black1   => '\[\033[1;30m\]',
    red      => '\[\033[0;31m\]',
    red1     => '\[\033[1;31m\]',
    green    => '\[\033[0;32m\]',
    green1   => '\[\033[1;32m\]',
    yellow   => '\[\033[0;33m\]',
    yellow1  => '\[\033[1;33m\]',
    blue     => '\[\033[0;34m\]',
    blue1    => '\[\033[1;34m\]',
    purple   => '\[\033[0;35m\]',
    purple1  => '\[\033[1;35m\]',
    cyan     => '\[\033[0;36m\]',
    cyan1    => '\[\033[1;36m\]',
    white    => '\[\033[0;37m\]',
    white1   => '\[\033[1;37m\]',
    none     => '\[\033[0m\]',
);
my %b = (
    black    => '\[\033[0;40m\]',
    black1   => '\[\033[1;40m\]',
    red      => '\[\033[0;41m\]',
    red1     => '\[\033[1;41m\]',
    green    => '\[\033[0;42m\]',
    green1   => '\[\033[1;42m\]',
    yellow   => '\[\033[0;43m\]',
    yellow1  => '\[\033[1;43m\]',
    blue     => '\[\033[0;44m\]',
    blue1    => '\[\033[1;44m\]',
    purple   => '\[\033[0;45m\]',
    purple1  => '\[\033[1;45m\]',
    cyan     => '\[\033[0;46m\]',
    cyan1    => '\[\033[1;46m\]',
    white    => '\[\033[0;47m\]',
    white1   => '\[\033[1;47m\]',
);

### HOSTS
chomp( my $hostname = qx/ hostname -s /);
my $host_color = $c{ white };
$host_color = $c{ blue1 }   if( $hostname eq 'bill' );
$host_color = $c{ green }   if( $hostname eq 'rancid' );
$host_color = $c{ purple }  if( $hostname eq 'fred' );
$host_color = $c{ cyan }    if( $hostname eq 'r2d2' );
$host_color = $c{ yellow }  if( $hostname eq 'tiwaz' );
$host_color = $c{ blue }    if( $hostname eq 'bananajr' );


### RED IF ROOT
my $user_color = ( $> == 0 ) ? $c{ red1 }: $c{ green1 };

### user other than soh
my $user = getpwuid( $> ) eq 'soh' 
    ? ''
    : $c{ red } . '@';

### SUSPENDED JOBS : we get the count on STDIN
chomp( my $job_count = <STDIN> );
my $jobs = $job_count ? "$c{ green }|$c{ yellow }$job_count$c{ none }" : ' ';
my $jobs_title = $job_count ? " |$job_count| " : '';


### PRINT THE PROMPT
if( $ENV{ TERM } eq 'linux' ) {
    print '',
        $user,
        $host_color,   $hostname,
        $c{ white },  ':\w',
        $jobs,
        $c{ green },  '|',
        $user_color,  '>',
        $c{ none },   ' '
}
else {
    print '\[\e]2;\u@\H: \w'. $jobs_title .'\a\]', # titlebar
        $user,
        $host_color,   $hostname,
        $jobs,
        $c{ green },  '|',
        $user_color,  '>',
        $c{ none },   ' '
}

