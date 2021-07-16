#!/usr/bin/perl -w

# Hashing ( Arrays Associativos ) - continuacao

my %tabela = qw/macarrao fluminense raviolli gremio caneloni internacional/;
my @chaves = keys %tabela;
my @nomes  = values %tabela;

my $item;
print "\nChaves:\n\n";
foreach $item ( @chaves ) {
    print "$item\n";
} 
print "\nNomes:\n\n";
foreach $item ( @nomes ) {
    print "$item\n";
}

print "\nOutra forma:\n\n";

while ( $chave = pop( @chaves ) ) {
    print "$chave => $tabela{ $chave } \n";
}

print "\nUsos da funcao EACH\n";

my ( $chave, $nome );
while ( ( $chave, $nome ) = each( %tabela ) ) {
    print "$chave => $nome \n";
}



