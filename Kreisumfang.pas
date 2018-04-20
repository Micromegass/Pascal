


program Kreisumfang;

const
PI = 3.141592654;

var
Radius,
Umfang : real; 

begin 
 
writeln('Berechnen des Kreisumfangs. Bitte Radius eingeben');
readln(Radius);

Umfang := 2*PI*Radius;


writeln('Umfang ist:', Umfang);

end.

