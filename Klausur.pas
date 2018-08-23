




program Klausur (imput, output); 

const
MAX = 10; 

type
tIndex = 1..MAX;
tFeld = array [tIndex] of integer;

var
Feld : tFeld;
i:tIndex;


procedure overwrite (var ioFeld:tFeld);

 var 
 i : tIndex;
 j: tIndex;
 
 
begin 



 for i:=1 to MAX do 
 begin

	j:= 2;
  while j <> MAX do
		if Feld[i] = Feld[j] then
		begin
		Feld[j] := 0;
		j := j + 1
		end
		else 
		 j := j+1
  end
		
		

		
		

end;
 
 


begin 

writeln('enter array numbers: ');


for i:=1 to MAX do 
readln(Feld[i]); 

overwrite(Feld);


for i:=1 to MAX do 
write(Feld[i]); 


end. 
