

program minimum (input, output); 


var
min,
zahl : integer; 

begin 


write('Zahlen eingeben, 0 beendet Eingabe'); 
readln(zahl);
min := zahl;

if zahl <> 0 then 
repeat 
if zahl < min then 
 min := zahl;
 readln(zahl) 
 until zahl = 0; 
 
 if min <> 0 then
 writeln(min)
 else 
 writeln('Fehler bei der eingabe')

end.
