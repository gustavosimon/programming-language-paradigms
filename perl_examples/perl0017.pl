#!/usr/bin/perl 

@colecao = qw/chapeu sapato camisa calca bone/;
@sequencia = (1..10);

print "\n\nusando foreach para listar uma colecao\n\n";

foreach my $item (@colecao) {
    print "$item ";
}

print "\n\nusando for como foreach\n\n";

for $item (@colecao) {
    print "$item ";
}
print "\n";

print "\n\nusando foreach com a variavel especial \$_\n\n";

foreach (@colecao) {
    print "$_ ";
}
print "\n";

print "\n\nusando foreach com a variavel especial \$_ tanto no foreach quanto no print\n\n";

foreach (@colecao) {
    print;
}
print "\n";

#posso dobrar uma lista alterando seus valores
foreach $numero (@sequencia) {
    $numero **= 2;
}
print "\n\n@sequencia\n\n";

print "embora nao recomendavel, posso usar foreach como for\n\n";

foreach ( $i=0; $i<10; $i++ ) {
	print "$i ";
}
print "\n";


 

