program byReference;
var
   a, b, c: integer;
function soma( var x, y: integer ): integer;
begin
    x := x + 1;
    soma := x+y;
end;    
begin
    a := 7; b := 5;
    writeln( soma( a, b ) );
    writeln( a + b );
end.