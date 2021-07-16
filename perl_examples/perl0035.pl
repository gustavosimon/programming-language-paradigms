#!/usr/bin/perl 

#Expressões regulares (II)
#
# O operador s///

use strict;
use warnings;

my $frase = 'socorram me subi no onibus em marrocos';

print "\n\nO string original é: \"$frase\"\n";
$frase =~ s/onibus/automovel/;
print "A string alterada é: \"$frase\"";

our $_ = $frase;

print "\n\nO string original é: \"$_\"\n";
s/automovel/caminhão/;
print "A string alterada é: \"$_\"";

print "\n\nO string original é: \"$_\"\n";
s (caminhão) (trem);
print "A string alterada é: \"$_\"\n\n";

$frase = "a ana ama a cama a mana ama banana";
print "Operador global 'g':\n\nO string original é: \"$frase\"\n";
my $trocadas = $frase =~ s/ana/ivone/g;
print "A string alterada é: \"$frase\"\n\n";
print "Nº de ocorrências trocadas foram: $trocadas\n\n";



