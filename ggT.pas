



program ggT (input, output);

{calculates biggest shared divider of two numbers}


var
x,
y : integer;




begin 

writeln('Plesse enter 2 full numbers which are bigger than 0: ');
readln (x);
readln (y);

if (x <= 0) or (y <= 0) then 
	writeln('Error')
	
else 

begin 

write('the biggest shared divider of ', x, 'and', y, 'is: ' );

while x <> y do
if x>y then
x := x-y
else 
y := y-x;

writeln(x, '.')

end

end.
