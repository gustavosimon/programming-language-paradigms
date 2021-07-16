#!/usr/bin/perl 

#Expressões regulares (IV)
#
# Classes de quantificadores
#
# *			0 ou mais ocorrências da expressão precedente
# +			1 ou mais ocorrências da expressão precedente
# ?			0 ou 1 ocorrência da expressão precedente
#                       obs: o ? colocado após + ou * faz com que estes operadores não sejam gananciosos
# {n}			n ocorrências da expressão precedente
# {n,m}			de n a m ocorrências da expressão precedente
# {n,}			de n a infinitas ocorrências da expressão precedente

use strict;
use warnings;

my $binario = '1101110111011101110111011101';
print "\n\nOriginal: => $binario\n\n";

# exemplo ganancioso
my $teste = $binario;
$teste =~ s/(1101)*/7/;
print "Ganancioso: s/(1101)*/7/ => $teste\n\n";

# exemplo não ganancioso
$teste = $binario;
$teste =~ s/(1101)*?/7/;
print "Não ganancioso: s/(1101)*?/7/ => $teste\n\n";

# exemplo com limites
$teste = $binario;
$teste =~ s/(1101){3}/7/;
print "Comedido: s/(1101){3}/7/ => $teste\n\n";

# exemplo com limites
$teste = $binario;
$teste =~ s/(1101){3,5}/7/;
print "Comedido: s/(1101){3,5}/7/ => $teste\n\n";

# exemplo com limites
$teste = $binario;
$teste =~ s/(1101){3,5}?/7/;
print "3 e 5 com int: s/(1101){3,5}?/7/ => $teste\n\n";