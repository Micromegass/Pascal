


program OBERE (input, output);

type 
tNatZahl = 0..maxint; 


function ObereSchranke (inZahl:tNatZahl):tNatZahl;

	var 
	Zahl, 
	Schranke : tNatZahl;
	
begin 

 if inZahl = 0 then 
 Schranke := 0
 else 
 begin 
 Zahl := inZahl; 
 Schranke := 1; 
 
 repeat 
 Zahl := Zahl div 10; 
 Schranke := Schranke * 10 
 until  Zahl = 0
 end; {if}
 
 ObereSchranke := Schranke
 
end; 


begin 
write(ObereSchranke(100))
end.
