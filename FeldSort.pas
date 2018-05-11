

program FeldSort (input, output); 


const 
FELDGROESSE = 5;



type 
tIndex = 1..FELDGROESSE;
tFeld = array[tIndex] of integer;



var 
index : tindex; 
EingabeFeld : tFeld;


function FeldMinimumPos (
	Feld : tFeld;
	von,bis : tIndex) : tIndex;
	
	
	
	var 
	MinimumPos,
	j: tIndex;
	
	
begin 
MinimumPos := von;

for j:= von +1 to bis do 
	if Feld[j] < Feld[MinimumPos] then
		MinimumPos := j;
		FeldMinimumPos := MinimumPos 
end; 


procedure vertauschen (hin, her : integer);


	var 
	Tausch : integer; 
	
begin 
Tausch := hin;
hin := her;
her := Tausch
end; 


procedure FeldSortieren (SortFeld :tFeld);

 {sortiert feld aufsteigend}


var 
MinPos,
i : tIndex;

begin 
for i := 1 to FELDGROESSE -1 do 
begin 

MinPos  := FeldMinimumPos(SortFeld, i, FELDGROESSE); 
vertauschen (SortFeld[MinPos], SortFeld[i])

end
end; 


begin 
writeln('Geben Sie', FELDGROESSE, ' Werte ein: '); 
for index := 1 to FELDGROESSE do 
readln(EingabeFeld[index]);

FeldSortieren (EingabeFeld);

for index := 1 to FELDGROESSE do 
	write (EingabeFeld[index]:6); 
	writeln
end.



