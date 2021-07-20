class Racional:
   def __init__(self, dividendo, divisor):
      self.dividendo = dividendo
      self.divisor = divisor

   def __str__(self):
      return str(self.dividendo) + '/' + str(self.divisor)

   def __mul__(self, outro):
      dividendo = self.dividendo*outro.dividendo
      divisor = self.divisor*outro.divisor
      return Racional(dividendo, divisor)

   def __truediv__(self, outro):
      dividendo = self.dividendo*outro.divisor
      divisor = self.divisor*outro.dividendo
      return Racional(dividendo, divisor)
    
   def __add__(self, outro):
      dividendo = self.divisor * outro.dividendo + outro.divisor * self.dividendo
      divisor = self.divisor * outro.divisor
      return Racional(dividendo, divisor)

   def __sub__(self, outro):
      dividendo = self.dividendo * outro.divisor - outro.dividendo * self.divisor
      divisor = self.divisor * outro.divisor
      return Racional(dividendo, divisor)
    
   def __abs__(self):
      divisor = self.divisor
      if self.dividendo < 0:
          dividendo = self.dividendo * -1
      else:
          dividendo = self.dividendo
      return Racional(dividendo, divisor)
    
## Metodos que podes sobrecarregar:
#
#__add__: Adição. A+B
#__sub__: Sutração. A-B
#__mul__: Multiplicação. A*B
#__div__: Divisão. A/B
#__mod__: Resto da divisão. A%B
#__pos__: Identidade. +A
#__neg__: Negativo. -A
#__abs__: Absoluto. |A|	  
	  
a = Racional(1,2)
print ( a )
b = Racional(3,4)
print ( b )
c = a*b
print ( c )	  
	  
