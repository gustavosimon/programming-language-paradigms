#!/usr/bin/perl -w

@array  = (0..20);
@array2 = (A..F);

print "@array\n";
print "@array2\n\n";

@trocado = splice( @array, 5, scalar( @array2 ), @array2 );
print "subsitituiu @trocado\n por @array2\n resultando em: @array\n\n";

@removido = splice( @array, 15, 3 );
print "removeu @removido\n deixando: @array\n\n";

@truncado = splice( @array, 8 );
print "removeu @truncado\n deixando: @array\n\n";

splice( @array );

unless ( @array ) {
    print "Não sobrou mais nenhum elemento no array...\n\n\n";	
} 

