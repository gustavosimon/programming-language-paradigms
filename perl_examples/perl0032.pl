#!/usr/bin/perl 

#sub-rotinas recursivas: fatorial

foreach ( 0..10 ) {
    print "$_! = " . fatorial( $_ ) . "\n";
}

print "\n\n";

sub fatorial
{
    my $numero = shift;     # declaro com escopo léxico

    if ( $numero <= 1 ) {
        return 1;
    } else {
        return $numero * fatorial( $numero - 1 );
    }
}
