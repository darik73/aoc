#!/usr/bin/perl

use strict;

open(my $fh, '<', 'day01_input.txt');
chomp(my @data = <$fh>);

# EX 1
my $increment = 0;

for (my $i = 1; $i < $#data + 1; $i++) {
  $increment++ if $data[$i] > $data[$i - 1];
}

print "1 - Increment: $increment\n";

# EX 2
$increment = 0;
my $suma;
my $prev = $data[0] + $data[1] + $data[2];

for(my $i = 0; $i < $#data + 1; $i++) {
  $suma = $data[$i] + $data[$i + 1] + $data[$i + 2];
  $increment++ if $suma > $prev;
  $prev = $suma;
}

print "2 - Increment: $increment\n";
