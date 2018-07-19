

program ggt (input, output); 


var
x,
y : integer; 

begin



writeln('insert two numbers');
readln(x);
readln(y); 

if (x <= 0) or (y<=0) then 
writeln('Fehler')
else 
begin 

while x <> y do
 begin
	if x>y then
    x := x - y
    else
    y := y - x
 end
 end;
 writeln(x)
 end.
