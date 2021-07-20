class Relogio(object):
    def __init__(self, hour_, minute_, second_):
        self.hour = hour_
        self.minute = minute_
        self.second = second_
    
    def __str__(self):  
        return "%0.2d:%0.2d:%0.2d" % (self.hour, self.minute, self.second)
    
    def __add__(self, other):        
        return Relogio((self.hour + other.hour) % 24, 
                     (self.minute + other.minute) % 60, 
                     (self.second + other.second) % 60)
    
    def __sub__(self, other):
        hour = self.hour - other.hour
        minute = self.minute - other.minute
        second = self.second - other.second
        
        if hour < 0:
            hour = 24 + hour
        
        if minute < 0:
            minute = 60 + minute
        
        if second < 0:
            second = 60 + second
        
        return Relogio(hour, minute, second)
    
    def __eq__(self, other):
        return (self.hour == other.hour and self.minute == other.minute and
                self.second == other.second)
    
    def __ne__(self, other):
        return not(self == other)
    
    def __gt__(self, other):
        if self.hour > other.hour:
            return True
        
        elif self.hour == other.hour:
            if self.minute > other.minute:
                return True
            
            elif self.minute == other.minute:
                if self.second > other.second:
                    return True
                
                else:
                    return False
             
            else:
                return False
        
        else:
            return False
    
    def __ge__(self, other):
        return (self > other) or (self == other)
    
    def __lt__(self, other):
        return not(self > other) and not(self == other)
    
    def __le__(self, other):
        return (self < other) or (self == other) 

# 
# Exemplo de uso 
# 

c1 = Relogio(18, 37, 32)
c2 = Relogio(20, 0, 30)

print type(c1)

print "Objeto c1 :", c1
print "Objeto c2 :", c2

print "c1  +  c2 =", c1 + c2
print "c1  -  c2 =", c1 - c2
print "c1  == c2 ?", c1 == c2
print "c1  != c2 ?", c1 != c2
print "c1  >  c2 ?", c1 > c2
print "c1  <  c2 ?", c1 < c2
print "c1  >= c2 ?", c1 >= c2
print "c1  <= c2 ?", c1 <= c2

