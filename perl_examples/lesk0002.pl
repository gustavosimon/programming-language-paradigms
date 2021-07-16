#!/usr/bin/perl 

#Exemplifica a colagem de cromossomos baseado em suas extremidades

# Processa entrada dos fragmentos
while ( $linha = <DATA> ) {
    chop($linha);
    push (@fragmentos, $linha );
}

# Agora o array @fragmentos contem os fragmentos
#
# Necessitamos dois relacionamentos entre os fragmentos:
#
# (1) que fragmento não compartilha nenhum prefixo com o sufixo de outro fragmento
#     * isto nos diz que fragmento vem primeiro
# (2) que fragmento compartilha o mais longo sufixo com o prefixo de um outro
#     * isto nos diz que fragmento segue outro fragmento
# Primeiro inicializamos os prefixos com valor default "semprefixoencontrado"
#     mais tarde alteramos este valor quando um prefixo é encontrado
#     o único fragmento que tiver ainda com o valor default deve vir primeiro
# Então iteramos sobre os pares de fragmentos para determinar o maior compartilhamento
#     Isto determina o sucessor de cada fragmento
#     Note-se que se um fragmento tem um sucessor, então o sucessor tem um prefixo
#

foreach $i (@fragmentos) {                                # alimento uma tabela hash de prefixos
    $prefixo{ $i } = "semprefixoencontrado";              # com o valor default semprefixoencontrado
}                                                         # para cada fragmento

# Para cada par, encontro o maior casamento do sufixo de um com o prefixo de outro 
#     Isto nos diz que fragmento SEGUE algum fragmento

foreach $i (@fragmentos) {                                # laço sobre fragmentos
    $maiorsufixo = "";                                    # inicializo maior sufixo com null
    foreach $j ( @fragmentos ) {                          # laço sobre possiveis pares de fragmentos
        unless ( $i eq $j ) {                             # a menos que os fragmentos sejam os mesmos
            $combine = $i . "XXX" . $j;                   # concateno fragmentos com separador 'XXX' 
            $combine =~ /([\S ]{2,})XXX\1/;               # busca sequencias repetidas
            if ( length($1) > length( $maiorsufixo ) ) {  # mantem o maior casamento
                $maiorsufixo = $1;                        # fica com o maior sufixo
                $sucessor{ $i } = $j;                     # grava que $j segue a $i
            }
        }
    }
    $prefixo{ $sucessor{ $i } } = "encontrou";            # se $j segue $i então $j deve ter um prefixo
}  

# O trecho abaixo não consta do programa original do Lesk.
print "\n\nprefixos: \n\n";
foreach ( keys %prefixo ) {
    print "$_ => $prefixo{ $_ } \n";
}

foreach (@fragmentos) {                                   # encontra o fragmento quue não tem nenhum prefixo
    if ( $prefixo{ $_ } eq  "semprefixoencontrado" ) { 
        $cadeiasaida = $_; 
        last;                                             # acrescentado por Ricardo
    }
}

$teste = $cadeiasaida;

# O trecho abaixo não consta do programa original do Lesk.
print "\n\nCadeia de saida: $cadeiasaida";
print "\nsucessor do inicial: $sucessor{ $teste }";
print "\n\nsucessores: \n\n";
foreach ( keys %sucessor ) {
    print "$_ => $sucessor{ $_ } \n";
}

while ( $sucessor{ $teste } ) {
    $teste = $sucessor{ $teste };
    $cadeiasaida = $cadeiasaida . "XXX" . $teste;
    $cadeiasaida =~ s/([\S ]+)XXX\1/\1/;                  # remove segmento casado ou seja: troca 'letraletraletraXXXletraletraletra' por 'letraletraletra'
}

$cadeiasaida =~ s/\\n/\n/g;
print "\n\nResultado:\n\n$cadeiasaida\n\n";


__END__
the man and women merely players;\n
one man in his time
All the world's
their entrances,\nand one man
stage,\nAnd all the man and women
They have their exists and their entrances,\n
world's a stage,\nAnd all
their entrances,\nAnd one man
in his time plays many parts.
merely players;\nThey have
