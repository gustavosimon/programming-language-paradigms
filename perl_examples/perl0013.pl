#!/usr/bin/perl -w

my @lista1 = ( "a", "b", "c", "d", "e", "f", "g" );
print "lista 1 : ", @lista1, "\n";
push( @lista1, "h" );
print "lista 1 : ", @lista1, "\n";
push( @lista1, "i", "j", "k" );
print "lista 1 : ", @lista1, "\n";
my $topo = pop( @lista1 );
print "lista 1 : ", @lista1, "\n";
print "topo    : ", $topo, "\n\n\n";



