program Maximum (input, output);
 
{gives out the maximum of user-input intergers}
	

var 
Eingabe, 
max :integer; 

begin 
max := 0;
writeln('enter numbers');
readln(Eingabe); 

while Eingabe <> 0 do 

    begin
	if Eingabe > max then 
	max := Eingabe; 
	readln(Eingabe)
	end; 
	
	if max <> 0 then 
	write('maximum is: ', max)
	else 
	write('leere FOlge')
	
end.
	
