#!/usr/bin/perl -w

use strict;

my $a = 5;
my $b = 6;
my $c = 7;

print "\nComando IF\n";

if ( $a > 6 ) {
    print "a e maior que 6\n";
} elsif ( $b > 6 ) {
    print "b e maior que 6\n";
} else {
    print "c e maior que 6\n"; 
}

print "\nComando IF inline\n";
print "b e maior que 6\n" if $b > 6;
print "b não é maior que 6\n" if $b <= 6;


print "\nComando UNLESS\n";

unless ( $a == 4 ) {
    print "$a\n";
} 

print "\nComando UNLESS inline\n";
print "b não é igual a 6\n" unless $b == 6;
print "b não é igual a 5\n" unless $b == 5;

print "\nComando WHILE\n";

my $i = 1;
while ( $i < $a ) {
    print "i agora vale $i\n";
    $i++;
}

print "\nComando UNTIL\n";

my $i = 1;
untill ( $i > $a ) {
    print "i agora vale $i\n";
    $i++;
}

print "\nComando DO WHILE\n";

$i = 1;
do {
    print "i agora vale $i\n";
    $i++;
} while ( $i < $a );

print "\nComando DO UNTIL\n";

$i =+ 7;
do {
    print "i agora vale $i\n";
    $i--;
} until ( $i < $a );

print "\nComando FOR\n";

for( $i=1; $i < $a; $i++ ) {
    print "i agora vale $i\n";
}




 

