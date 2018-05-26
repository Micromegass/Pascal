

program SecretCode (input, output); 

procedure twist; 


var 
character : char; 



begin 
read(character);

if character = '.' then 
	writeln
else
begin

	twist; 
	write(character)
	
end 
end; 



begin 
writeln('please enter phrase to turn it into secret code.');
writeln('end with fullstop.');
twist

end. 
