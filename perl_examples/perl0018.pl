#!/usr/bin/perl -w

@array = qw/zero um dois tres quatro cinco seis sete oito nove/;

#exibe o número de elementos e o último número de índice
print "Existem ", scalar( @array ), " elementos em \@array\n";
print "O último índice em \@array é $#array.\n\n";

#exibe o último elemento do array
print "\@array[ $#array ] é $array[ $#array ].\n\n";

#escrevendo de trás para frente
print "\@array[ - 1 ] é $array[ -1 ].\n";
print "\@array[ - 2 ] é $array[ -2 ].\n";
print "\@array[ - 3 ] é $array[ -3 ].\n\n";

#escreve somente os elementos de subscrito ímpar
print "@array[ 1, 3, 5, 7, 9]\n\n";

#faz atribuições múltiplas no array
@array[ 1, 3, 5, 7, 9 ] = qw( 1 3 5 7 9 );
print "@array\n\n";

#troca dois elementos de posição
$um = "um";
$dois = "dois";
($um, $dois) = ($dois, $um);
print "um = $um\n"; 
print "dois = $dois\n\n"; 

#reduz o número de elementos para 6
$#array = 5;
print "@array.\n\n";

#aumenta o número de elementos para 11
$#array = 10;
print "@array.\n\n";

$#array = ();
print "@array.\n\n";

 

