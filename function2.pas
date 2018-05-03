




					
program FindePrimzahl (input, output); 

{finds the next prime number}



type
tNatZahlPlus1 = 0..maxint; 

var 
Einzahl,
d : tNatZahlPlus1; {d is displacement (Schrittweite)}

gefunden : boolean;


function istPrimzahl  (p: tNatZahlPlus1) : boolean;
{returns true when prime number, if not false}

var 
q : tNatZahlPlus1;

begin 
if p < 2 then
istPrimzahl := false

else 
begin 
q := 2;
while (p mod q <> 0) do
q := q +1;
if q = p then 
istPrimzahl := true 
else 
istPrimzahl := false 
end 

end;






begin 
	writeln('please enter a nuber to determine next prime number');
	readln(EinZahl);
	write('next prime number to ', EinZahl, ' is: ');
	
	
	
	if istPrimzahl (EinZahl) then 
	writeln(EinZahl)
	
	else 
		if EinZahl = 1 then 
		writeln('2':5)
		else
		begin 
		gefunden := false; 
		
		if odd (Einzahl) then 
		d := 2
		
		else 
		d:= 1;
		
		repeat 
		
			if istPrimzahl (Einzahl + d) then 
			{found prime number above EinZahl}
			begin 
			gefunden := true; 
			write(EinZahl + d : 5)
			end; 
			
			if istPrimzahl(Einzahl - d) then 
			begin
			gefunden := true; 
			
			write (Einzahl - d : 5)
			end; 
			
			d := d+2
			
			until gefunden; 
			writeln
			end 
			
		end.  
			
			
		
		
		
		
	 

