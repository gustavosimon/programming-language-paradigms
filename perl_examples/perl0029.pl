#!/usr/bin/perl -w

#pack e unpack

@cadeia1 = unpack ( "a3a2a1a1", "Feevale" );

foreach( @cadeia1 ) {
    print "$_\n";
}

print "\n\n";

