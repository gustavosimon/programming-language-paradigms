#!/usr/bin/perl 

#Expressões regulares (V)
#
# Retroreferências
#

use strict;
use warnings;

my $lista = '1-ana 2-cecilia 3-marta 4-mossman 5-regis 6-ricardo 7-tiago';
print "\n\nLista Original: => $lista\n\n";

$lista =~ /(\d)\D*(\d)\D*(\d)\D*(\d)\D*(\d)\D*(\d)\D*(\d)\D*/; 
print "$3\n\n";

$lista =~ /(\d)(\D*)\d(\D*)\d\D*\d(\D*)\d\D*\d(\D*)\d\D*/; 
print "$2\t$3\t$4\t$5\n\n";


