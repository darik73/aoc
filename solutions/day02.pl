#!/usr/bin/perl

use strict;

open(my $fh, '<', 'day02_input.txt');
chomp(my @data = <$fh>);
my @data2 = @data;

# EX 1

my $horizontal = 0;
my $depth = 0;
my $resultado = 0;

foreach my $dir (@data) {
  if($dir =~ m/forward/) {
    $dir =~ tr/forward //d;
    $horizontal += $dir;
  }

  elsif($dir =~ m/up/) {
    $dir =~ tr/up //d;
    $depth -= $dir;
  }

  elsif($dir =~ m/down/) {
    $dir =~ tr/down //d;
    $depth += $dir;
  }
}
 
$resultado = $depth * $horizontal;
print "1 - $resultado\n";

# EX 2

my $aim = 0;
$horizontal = 0;
$depth = 0;

foreach my $dir (@data2) {
  if($dir =~ m/forward/) {
    $dir =~ tr/forward //d;
    $horizontal += $dir;
    if($aim != 0) {
	 $depth += $dir * $aim;
    }
  }
  elsif($dir =~ m/up/) {
    $dir =~ tr/up //d;
    $aim -= $dir;
  }

  elsif($dir =~ m/down/) {
    $dir =~ tr/down //d;
    $aim += $dir;
  }
}

$resultado = $depth * $horizontal;
print "2 - $resultado\n";
