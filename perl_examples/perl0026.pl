#!/usr/bin/perl 

# Controles de laço

print "next - salta para o próximo\n\n";

foreach ( 1..10 ) {

    if ( $_ == 5 ) {
        $saltei = $_;
        next;
    }

    print "$_ ";
}

print "\n\nUsei 'next' para saltar o elemento $saltei.";
print "\n\nlast - sai do laço indo para após o último\n\n";

foreach ( 1..10 ) {

    if ( $_ == 5 ) {
        $ultimo = $_;
        last;
    }

    print "$_ ";
}
print "\n\nUsei 'last' para terminar o laço em $ultimo.\n\n";
print "\n\nredo - salta a avaliação de continuação do laço\n\n";

$numero = 1;
while ( $numero <= 5 ) {
    if ( $numero <= 10 ) {
        print "$numero ";
        ++$numero;
        redo; # volta para a linha do while mas não testa a condição!!
    }
}
print "\n\nParou quando \$numero se tornou $numero\n\n";


