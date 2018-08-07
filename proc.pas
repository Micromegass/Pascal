
program proc (input, output); 


var 
L1:real; 
L2:real; 
exist: boolean; 


procedure mitternacht   (ina : real; 
						inb: real;
						inc:real;
						
						var outLoesung1: real; 
						var outLoesung2: real;
						var outgibtLoesung: boolean); 


	var 
	d : real; 
	
	
	begin
	
	d := inb*inb - 4*ina*inc;
	if (d < 0.0) or (ina=0) then 
	 outgibtLoesung := false
	else
	begin
	 d := sqrt(d);
	 outgibtLoesung := true; 
	 outLoesung1 := -(inb-d) / (2.0*ina);
     outLoesung1 := -(inb+d) / (2.0*ina)
	end 
	end;
	

								


begin


mitternacht(1.0,3.0,2.0,L1,L2,exist);

if exist then 
writeln ('Loesung 1: ', L1:2:2, 'Loesung 2: ', L2:2:2)
else 
writeln ('keine Loesung')

end. 
