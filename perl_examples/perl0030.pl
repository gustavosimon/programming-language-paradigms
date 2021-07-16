#!/usr/bin/perl -w

#sub-rotinas

$a = procedimento();
print "resultado de procedimento: $a\n\n";

procedimentoComArgumentos( "Universidade", "Feevale", 1, 3.14 );



sub procedimento
{
    print "chamou procedimento\n";
}

sub procedimentoComArgumentos
{
    print "lista de argumentos: @_\n";

    foreach ( @_ ) {
        print "$_ ";
    }
    print "\n";
    for ( $i=0; $i<@_; ++$i ) {
        print "$_[ $i ] ";
    } 
    print "\n\n";
}
