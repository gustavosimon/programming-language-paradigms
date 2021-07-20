class Figura(object):
    def __init__(self):
        print ( 'criou Figura' )

    def nome( self ):
        print ( 'Nome da Figura' )
	
    def __str__(self):
        return "< classe Figura >"

class Poligono(object):
    def __init__(self):
        print ( 'criou Poligono' )

    def nome( self ):
        print ( 'Nome do Poligono' )
	
    def __str__(self):
        return "< classe Poligono >"

class Quadrado(Figura, Poligono):
    def __init__(self):
        Figura.__init__(self)
        Poligono.__init__(self)
        print( 'quadrado' )

    def __str__(self):
        return "< classe Quadrado >"
		

c = Quadrado()
c.nome()