program byValue;
var
   a, b, c: integer;
function soma( x, y: integer ): integer;
begin
    x := x + 1;
    soma := x+y;
end;    
begin
    a := 7; b := 5;
    writeln( soma( a, b ) );
    writeln( a + b );
end.