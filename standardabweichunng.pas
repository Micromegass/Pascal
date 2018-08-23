


program StA(input, output);


const 
MAX = 5; 

type
tIndex = 1..MAX;
tFeld = array [tIndex] of integer;

var 
Feld:tFeld;
i :tIndex;


function Standardabweichung (inFeld:tFeld): real;

	var 
	Summe :integer;
	i: tIndex;
	Mittelwert:integer;
	Zahler: integer;
	ergebnis :real;
	
begin
	Summe := 0;
	for i:=1 to MAX do 
	begin
	Summe := Summe + inFeld[i]
	end;
		Mittelwert := Summe div MAX;

	
	Zahler := 0;	
	
	for i:= 1 to MAX do 
	begin
	Zahler := Zahler + (sqr(inFeld[i]) - Mittelwert);
	Zahler := Zahler div MAX
	end;
	ergebnis := sqrt(Zahler);
	Standardabweichung := ergebnis
	
end; 



begin 


writeln('werte eingeben: ');

for i:= 1 to MAX do 
	readln(Feld[i]);
	
write(Standardabweichung(Feld))

end.
