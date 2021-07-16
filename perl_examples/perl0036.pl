#!/usr/bin/perl 

#Expressões regulares (III)
#
# Classes especiais de caracteres
#
# \d qualquer digito			\D qualquer caractere não digito
# \w qualquer caractere de palavra	\W qualquer caractere não de palavra
# \s qualquer caractere de espaçamento	\S qualquer caractere não de espaçamento
# |  serve para indicar alternância

use strict;
use warnings;

my $frase1 = 'socorram me subi no onibus em marrocos';
my $frase2 = 'socorram me subi em 2 onibus em marrocos';

print "'$frase1' tem 1 digito\n" if $frase1 =~ /\d/;
print "'$frase2' tem 1 digito\n" if $frase2 =~ /\d/;
print "'$frase1' tem 1 digito\n" if $frase1 =~ /[0-9]/;
print "'$frase2' tem 1 digito\n" if $frase2 =~ /[0-9]/;
print "'$frase1' tem a palavra trem ou onibus\n" if $frase1 =~ /trem|onibus/;
print "'$frase2' tem a palavra trem ou o digito 2\n" if $frase2 =~ /trem|2/;

