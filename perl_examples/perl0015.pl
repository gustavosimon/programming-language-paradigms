#!/usr/bin/perl -w

use strict;

my $a = "Feevale";
{
  my $b = "UFRGS";
  print "Dentro do Bloco : $a, $b\n";
}
print "Fora do Bloco : $a, $b\n";
