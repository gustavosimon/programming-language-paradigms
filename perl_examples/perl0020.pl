#!/usr/bin/perl -w

@array  = (0..9);
@reverso = reverse( @array );

print "Original: ", "@array\n";
print "Reverso : ", "@reverso\n\n";

@array2 = ( 100, 23, 9, 75, 5, 10, 2, 50, 7, 96, 1, 40 );
@array2OrdenadoLexicamente = sort @array2; #poderia usar alternativamente sort { $a cmp $b } @array2; 
@array2OrdenadoNumericamente = sort { $a <=> $b } @array2;

print "Não ordenado           : ", "@array2\n";
print "Ordenado lexicamente   : ", "@array2OrdenadoLexicamente\n";
print "Ordenado Numericamente : ", "@array2OrdenadoNumericamente\n\n\n";

