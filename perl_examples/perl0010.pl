#!/usr/bin/perl -w

use strict;

my $ComecaIndefinida;
my $ComecaDefinida = "Esta aqui comecou definida";

print "\$ComecaDefinida == ", defined $ComecaDefinida,
      "\$ComecaIndefinida == ", defined $ComecaIndefinida, "\n";

$ComecaIndefinida = "Esta agora esta Definida";
$ComecaDefinida = undef;

print "\$ComecaDefinida == ", defined $ComecaDefinida,
      "\$ComecaIndefinida == ", defined $ ComecaIndefinida, "\n";
