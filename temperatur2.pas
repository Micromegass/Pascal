
program Temperatur(output);

var
Fahrenheit,
Celsius : real; 

begin 

Fahrenheit := 50;

Celsius := ((5*(Fahrenheit-32)) / 9.00);


writeln(trunc(Celsius));

end.
