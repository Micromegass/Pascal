




type
tRefListe = ^tListe;
tListe = record
		info: integer; 
		next : tRefListe
		end; 





procedure ListeAufbauen (var outRefAnfang : tRefListe); 

var 
Zeiger: tRefliste;
Zahl : integer; 


begin 

outRefAnfang := nil; 
readln(Zahl);

while Zahl <> 0 do 

begin 
new (Zeiger);
Zeiger^.info := Zahl; 
Zeiger^.next := outRefAnfang;
outRefAnfang := Zeiger; 
readln(Zahl)
end 

end; 

procedure ListeDurchlaufen (inRefAnfang : tRefListe);

var 
Zeiger : tRefListe;


begin 
Zeiger := inRefAnfang;
while Zeiger <> nil do 
begin 
writeln(Zeiger^.info); 
Zeiger := Zeiger^.next 
end 

end; 
 
 
 
begin 




writeln('enter numbers: ');
ListeAufbauen(Eingabe);


ListeDurchlaufen(Eingabe);

end.

