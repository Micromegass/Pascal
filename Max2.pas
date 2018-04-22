
program Maximum (input, output);
 
{gives out the maximum of user-input intergers}
	


var 
number : integer;
max : integer;


begin 

writeln('please enter as many numbers as you like ');
writeln('to find highest number. To stop enter 0.');

readln(number);
max := number ;
 

while number <> 0 do 

begin 

	if number > max then 
	max := number;
	readln(number)
	end;  
	
	if max <> 0 then 
	writeln('the highest number is: ', max)
	
	else 
	writeln('Leere Eingabefolge')
	
	
end.
	






