#!/usr/bin/perl 

#Expressões regulares (I)
#
# O operador m//, o operador de vinculo ~= e o operador != 

use strict;
use warnings;

my $frase = 'socorram me subi no onibus em marrocos';
my $padrao = 'e';

print "\n\ncasou padrão 'onibus'\n" if $frase =~ m/onibus/;
print "casou padrão 'Onibus'\n" if $frase =~ m/Onibus/;
print "frase casou pela ausencia do padrão 'Trator'\n" if $frase !~ m/Trator/;
print "casou padrão 'e' contido em \$padrao\n" if $frase =~ m/$padrao/;
print "casou padrão 'onibus' sem usar a letra 'm'\n" if $frase =~ /onibus/;
print "casou padrão 'onibus' usando chaves {}\n" if $frase =~ m{onibus};
print "casou padrão 'onibus' usando parentesis ()\n" if $frase =~ m(onibus);
print "casou padrão 'onibus' usando colchetes []\n" if $frase =~ m[onibus];
print "casou padrão 'onibus' usando virgulas ,,\n" if $frase =~ m,onibus,;
print "casou padrão 'onibus' usando cerquilhas ##\n\n\n" if $frase =~ m#onibus#;

