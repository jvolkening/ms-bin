#!/usr/bin/perl

use strict;
use warnings;

use MS::Reader::MzML;

my ($fn, $mz) = @ARGV;

my $p = MS::Reader::MzML->new($fn);

my $ic = defined $mz
    ? $p->get_xic(mz => $mz, err_ppm => 10)
    : $p->get_tic();

my @rt  = $ic->rt;
my @int = $ic->int;

print "RT\tintensity\n";
print "$rt[$_]\t$int[$_]\n" for (0..$#rt);
