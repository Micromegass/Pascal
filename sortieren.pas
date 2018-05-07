


program Sort (input, output); 

const 
FELDGROESSE = 5; 

type 
tIndex = 1..FELDGROESSE;
tFeld = array[tIndex] of integer ;

var 
Eingabe : tFeld; 
MinimumPos,
i : integer; 
Tausch : integer;


function FeldMin (Feld : tFeld; von, bis: tIndex): tIndex;

	var 
	MinPos,
	j:tIndex;
	
		
	
begin

	MinPos := von;
	for j := von + 1 to bis do
	if Feld[j] < Feld[MinPos] then 
	 MinPos := j;
	 FeldMin := MinPos;
end; 
	 
	 
	 


begin 
writeln('Please insert ', FELDGROESSE, ' values to order them: ');
for i := 1 to FELDGROESSE do 
readln(Eingabe[i]);

for i := 1 to FELDGROESSE - 1 do 

begin 
	MinimumPos := FeldMin (Eingabe, i, FELDGROESSE);
	Tausch := Eingabe[MinimumPos];
	Eingabe[MinimumPos] := Eingabe[i];
	Eingabe[i] := Tausch;
end; 
	
	
	for i := 1 to FELDGROESSE do 
		write(Eingabe[i]:6);
		writeln;
end. 
