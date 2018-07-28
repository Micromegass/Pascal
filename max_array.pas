


program maxi (input, output); 

type 
tIndex = 0..maxint; 
tFeld = array [tIndex] of integer; 

var 
Feld : tFeld; 
max, 
i : tIndex; 
begin 

writeln('Zahlen eingeben, Null beendet eingabe: ');

readln(i); 
if i = 0 then 
begin
write('leere Eingabefolge') ;
exit
end
else 

max := 0; 

repeat 
 readln(Feld[i]);
 if Feld[i] > max then 
 max := Feld[i]
until Feld[i] = 0 ;

write('Maximum is ', max)

end.
