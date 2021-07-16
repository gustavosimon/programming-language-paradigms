#!/usr/bin/perl 

#Expressões regulares (VI)
#

use strict;
use warnings;

my $frase1 = 'socorram me subi no onibus em marrocos';
my $frase2 = 'onibus em marrocos que são uma raridade';

my $combine = $frase1 . "XXX" . $frase2;

# Padrões reconhecidos:
# [\S ] - qualquer caractere que não seja de espaçamento mais o espaço em branco (ou seja, de fora ficam tabs, enters, etc...)
# {2,}  - indica trechos de 2 ou mais dos caracteres acima
# XXX   - o trecho que identifica o "meio"
# \1    - uma retroreferência para a expressão regular encontrada anteriormente

$combine =~ /([\S ]{2,})XXX\1/;

print "\n\n$1\n\n";





