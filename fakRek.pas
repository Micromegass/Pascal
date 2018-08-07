



program fak (input, output); 


function Fakultaet (inZahl:integer):integer; 

 var
 Ergebnis:integer;
 i:integer;
 
 begin 
 
 if inZahl = 0 then 
 Ergebnis := 1 
 else 
 
 begin
 Ergebnis := 1;
 for i:=2 to inZahl do
 Ergebnis := i * Ergebnis;
 
 end;
 
 Fakultaet := Ergebnis
 
 end;
 
 
 begin 
 
 
 write(Fakultaet(0))
 end.
