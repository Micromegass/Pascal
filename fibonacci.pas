
program Fibonacci (input, output); 

type
tNatzahl = 1..maxint;

function Fib (inZahl : tNatzahl): tNatZahl; 

	begin 
	if inZahl < 2 then
	Fib := inZahl 
	else
	Fib := Fib(inZahl - 1) + Fib(inZahl -2)
	end;
	
	
	
begin 

writeln(Fib(13))

end.
	

