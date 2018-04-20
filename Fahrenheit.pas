


program Temperatur;

var
Fahrenheit,
Celsius : real; 

begin 

writeln('Bitte Fahrenheit eingeben');
readln(Fahrenheit);

Celsius := ((5*(Fahrenheit-32)) / 9);



writeln(trunc(Fahrenheit), ' Fahrenheit entsprechen circa ', t(Celsius), '  Grad Celsius');

end.

