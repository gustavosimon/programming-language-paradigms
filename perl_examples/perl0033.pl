#!/usr/bin/perl 

#regras de escopo
#
# my    - escopo léxico		vale somente no bloco e não é visto nas subrotinas chamadas
# local - escopo dinâmico       vale no bloco onde é criada e nas sucessivas chamadas de subrotinas dentro deste bloco
# our   - escopo global         vale em qualquer lugar exceto enquanto não escondida por outra variável com outro escopo

print "Sem globais:\n";
subrotina1();

#define variaveis globais
our $x = 7;
our $y = 17;

print "\nCom globais:";
print "\n\$x global: $x";
print "\n\$y global: $y\n";
subrotina1();
print "\n\$x global: $x";
print "\n\$y global: $y\n";

sub subrotina1 {
    my $x = 10;
    local $y = 5;
    print "\$x na subrotina1: $x\t(léxica para subrotina1)\n";
    print "\$y na subrotina1: $y\t(dinâmica para subrotina1)\n";
    subrotina2();
}

sub subrotina2 {
    print "\$x na subrotina2: $x\t(global)\n";
    print "\$y na subrotina2: $y\t(dinâmica para subrotina1)\n";
}

