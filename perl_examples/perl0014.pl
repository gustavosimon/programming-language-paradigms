#!/usr/bin/perl -w

use strict;

my @lista1 = ( "a", "b", "c", "d", "e", "f", "g" );
print "lista 1 : ", @lista1, "\n";
unshift( @lista1, "1" );
print "lista 1 : ", @lista1, "\n";
unshift( @lista1, "2" );
print "lista 1 : ", @lista1, "\n";
pop( @lista1 );
print "lista 1 : ", @lista1, "\n";
shift( @lista1 );
print "lista 1 : ", @lista1, "\n";

