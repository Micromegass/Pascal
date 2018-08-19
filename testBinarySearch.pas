



program BinayrySearch (input, output);


const
MAX = 15; 


type 
tIndex = 1..MAX;
tFeld = array [tIndex] of integer;


var
Feld : tFeld;
i : tIndex;
Suchwert : tIndex;


function Search (inSuchwert:integer; inFeld:tFeld) : integer;
	
	var 
	Mitte, 
	oben,
	unten: integer;
	gefunden : boolean ;

begin


gefunden := false ;
unten := 1;
oben := max; 

	while not gefunden and (unten <= oben)do
	begin 
	Mitte := (oben + unten) div 2; 
	if  Suchwert = Feld[Mitte] then 
	gefunden := true
	else 
	if  Suchwert < Feld[mitte]then 
    oben := Mitte - 1
	else 
	unten := Mitte + 1
	end;
	search := Suchwert
   end;



begin 


for i:= 1 to MAX do 
begin
writeln('enter array field: ');
readln(Feld[i])
end;


writeln('enter search value: ');
readln(Suchwert);

writeln('Suchwert ist an Position: ');
write(Search(Suchwert, Feld));


end.
