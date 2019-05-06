#!/usr/bin/perl

use strict;
use warnings;

my @arr;

for my $i ( 1 .. 1000000 ) {
    push @arr, "$i";
    if ( $i % 10000 == 0 ) {
        sleep(1);
    }
}
