#!/usr/bin/perl 

# Usando blocos básicos e rótulos

print "Digite seu palpite (1-3): ";
$palpite = <STDIN>;

BLOCO: {
    if ( $palpite == 1 ) {
        print "Acertou!\n";
        last BLOCO;
    }

    if ( $palpite == 2 ) {
        print "Quase acertou!\n";
        last BLOCO;
    }

    if ( $palpite == 3 ) {
        print "Errou!\n";
        last BLOCO;
    }

    {
        print "Por favor, digite na faixa (1-3): ";
        $palpite = <STDIN>;
        redo BLOCO;
    }
}
