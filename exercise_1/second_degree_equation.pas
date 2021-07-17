// Programa para calcular as raízes de uma equação de segundo grau
program secondDegreeEquation;
var
   a, b, c, delta: integer;
   raiz1, raiz2: real;
// Função para calcular o delta da equação 
function calculaDelta( a, b, c: integer ): integer;
begin
    delta := b * b - 4 * a * c;
end;
// Função para calcular a raiz única da equação
function calculaRaizUnica( a, b: integer ): real;
begin
    raiz1 := -b / (2 * a);
end;
// Função para calcular as duas raízes reais da equação
function calculaRaizes( delta, a, b: integer ): real;
begin
    raiz1 := (-b + sqrt(delta)) / (2 * a);
    raiz2 := (-b - sqrt(delta)) / (2 * a);
end;
begin
// Inicializa as variáveis
    a := 0;b := 0;c := 0;
// Enquanto a for zero, espera receber um valor, pois para caracterizar uma função quadrática a deve ser diferente de zero
    while a = 0 do
     begin
      readln(a);
     end;
    readln(b);
    readln(c);
// Imprime os valores recebidos de a, b e c respectivamente
    writeln(a);
    writeln(b);
    writeln(c);

// Calcula o delta da equação
    delta := calculaDelta(a, b, c);

// Se o delta for menor que zero, a equação não tem raízes reais
    if delta < 0 then 
      begin
// Informa que não existem raízes reais
        writeln('Sem raízes reais');
      end;
    
// Se o delta for igual a zero, a equação só possui uma raiz real
    if delta = 0 then 
      begin
          writeln( 'Duas raízes reais e iguais' );
// Calcula a raiz única da equação, e informa o resultado 
          writeln( 'Raiz:' );
          writeln( calculaRaizUnica(a, b) );
      end;
      
// Se o delta for maior que zero, a equação possui duas raízes reais      
    if delta > 0 then 
      begin
// Calcula as raízes da equação, e informa o resultado 
          calculaRaizes(delta, a, b);
          writeln( 'Duas raízes reais e distintas' );
          writeln( 'Raiz 1:' );
          writeln( raiz1 );
          writeln( 'Raiz 2:' );
          writeln( raiz2 );
       end; 
end.