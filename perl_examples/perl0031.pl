#!/usr/bin/perl -w

#sub-rotinas

for ( 1..10 ) {
    print quadrado( $_ ), " ";
}

print "\n\n";

sub quadrado
{
    $valor = shift;    #shift sozinho equivale a shift( @_ )
    return $valor ** 2;
}
