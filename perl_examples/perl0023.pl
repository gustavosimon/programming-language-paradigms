#!/usr/bin/perl -w

# Hashing ( Arrays Associativos )

use strict;

my %romanos = ( um     => 'I',
                dois   => 'II',
                tres   => 'III',
                quatro => 'IV',
                cinco  => 'V',
                seis   => 'VI',
                sete   => 'VII',
                oito   => 'VIII',
                nove   => 'IX',
                dez    => 'X');

print "Os numerais romanos para três, cinco e oito são: ",
      "@romanos{ 'tres', 'cinco', 'oito' }\n";  
 
print @romanos{ quatro }, "\n";
print $romanos{ quatro }, "\n";
