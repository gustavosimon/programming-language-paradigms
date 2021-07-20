def obtemCadeiaA():
    fonte = open( 'c:/temp/7dzw.pdb', 'r' )
    destino = open( 'c:/temp/7dzwa.pdb', 'w' )
    dicionario = {}
    for i in fonte:
        if ( i[:4] == 'ATOM' ):
            if ( i[21] == 'A'):
                if (i[13:15] == 'CA'):
                    destino.write(i)
                    aminoacido = i[17:20]
                    if aminoacido in dicionario:
                        dicionario[aminoacido] += 1
                    else:
                        dicionario[aminoacido] = 1
    for i in dicionario:
        print(i+' '+str(dicionario[i]))
    destino.close()
    fonte.close()