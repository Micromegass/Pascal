
program Zins(input,output);
{Das Programm berechnet das jährlich angesparte Geld aus
Anlagebetrag, Zinsen und Laufzeit.}
 var
 
 
 Betrag:real;
 Laufzeit:integer;
 Zinsen:real;
 i:integer;
 ZZ: real;
begin

 writeln('Geben Sie Betrag, Laufzeit und Zinsen ein: ');
 readln(Betrag);
 readln(Laufzeit);
 readln(Zinsen);
 
for i:= 1 to Laufzeit do
 begin 
 Zinsen := (Betrag/100) * Zinsen;
 Betrag:= Betrag + Zinsen;
 
 ZZ := (Zinsen/100)* Zinsen;
 betrag := Betrag + ZZ;
 writeln('Nach ', i, ' Jahren ', Betrag:2:2); 
 
 end



end.
