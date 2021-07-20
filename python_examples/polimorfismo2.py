# -*- coding: utf-8 -*-
import math

class Figura:
    pass

class Circulo(Figura):
    """Circulo uma figura geometrica"""
    def __init__(self, raio):
        self.raio = raio
    def __str__(self):
        return "Circulo com raio " + str(self.raio) 
    def area(self):
        """Calcula a area do circulo"""
        self.area = math.pi*(self.raio**2)
        return self.area
    def get_area(self):
        return math.pi*(self.raio**2)        
    def perimetro(self):
        """Calcula o perimetro do circulo"""
        self.perimetro = math.pi*self.raio*2
        return self.perimetro
    def get_perimetro(self):
        return math.pi*self.raio*2         

class TrianguloRetangulo(Figura):
    """Triangulo retangulo uma figura geometrica"""
    def __init__(self, cateto1, cateto2):
        self.cateto1 = cateto1
        self.cateto2 = cateto2
    def __str__(self):
        return "Triangulo retangulo de catetos " + str(self.cateto1 ) + "," + str( self.cateto2) 
    def hipotenusa(self):
        """Calcula a hipotenusa"""
        hipotenusa = math.hypot( self.cateto1, self.cateto2 )
        return hipotenusa
    def area(self):
        """Calcula a area do Triangulo retangulo"""
        self.area = (self.cateto1*self.cateto2)/2
        return self.area
    def get_area(self):
        return (self.cateto1*self.cateto2)/2  
    def perimetro(self):
        """Calcula o perimetro do Triangulo retangulo"""
        self.perimetro = self.cateto1+self.cateto2+self.hipotenusa()
        return self.perimetro
    def get_perimetro(self):
        return self.cateto1+self.cateto2+self.hipotenusa()        

class Retangulo(Figura):
    """Retangulo uma figura geometrica"""
    def __init__(self, base, altura):
        self.base = base
        self.altura = altura
    def __str__(self):
        return "Retangulo de lados " + str(self.base) +","+str( self.altura) 
    def area(self):
        """Calcula a area do Retangulo"""
        self.area = (self.base*self.altura)
        return self.area
    def get_area(self):
        return (self.base*self.altura)   
    def perimetro(self):
        """Calcula o perimetro do Retangulo"""
        self.perimetro = self.base*2+self.altura*2
        return self.perimetro        
    def get_perimetro(self):
        return self.base*2+self.altura*2

def ap(x):
    print ("tipo=",type(x))
    print (x.get_area())
    print (x.get_perimetro())

def main():    
    t = TrianguloRetangulo(3,4)
    c = Circulo( 5 )
    r = Retangulo(3, 4)
    print(t)
    print(c)
    print(r)
    print('-------------------------------------')
    ap(r)
    
if __name__ == '__main__':
    main()


    