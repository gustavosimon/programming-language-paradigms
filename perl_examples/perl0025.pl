#!/usr/bin/perl -w

# Hashes criados a partir de seus elementos

@palavras = qw ( exibe palavra que aparece mais vezes neste array
                 que exibe neste que exibe mais com com que que array exibe
                 palavra com que mais que array exibe que neste que array
                 exibe que que array neste que mais aparece );


# a cada elemento de palavras eu crio uma entrada de hash (se não havia) e incremento uma contagem ao mesmo tempo
foreach( @palavras ) {
    ++$hash{ $_ };
}

print "\n\nPalavra\t\tFreqüência\n";
print "-------\t\t----------\n";

foreach ( sort keys( %hash ) ) {
    print "$_\t\t", "*" x $hash{ $_ }, "\n";
}

print "\n\nPalavra\t\tFreqüência\n";
print "-------\t\t----------\n";

foreach ( sort { $hash{ $b } <=> $hash{ $a } } keys( %hash ) ) {
    print "$_\t\t", "*" x $hash{ $_ }, "\n";
}

print "\n\n";
