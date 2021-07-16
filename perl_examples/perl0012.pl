#!/usr/bin/perl -w

use strict;

my @lista1 = ( "a", "b", "c" );
my @lista2 = qw/ a b c /;
my @lista3 = ( 1, 2, 3 );
my @listao = ( @lista1, @lista2, @lista3 );

print @listao, "\n";
print $lista1[ 0 ], "\n";

my @lista4 = @lista3[ 1..2 ];

print @lista4, "\n\n";

print "$lista1[1]\n\n";
print "@lista1[1]\n\n";

