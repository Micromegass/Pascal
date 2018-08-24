




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
 i, k : tIndex;
 j: tIndex;
 
 
begin 

k := 1; 
i := 1; 

while k < MAX do
 
begin
 while i < MAX do 
	for j:= 2 to MAX do 
	begin
	 if Feld[i] = Feld[j] then 
	  Feld[i] := 0;
	 end;
	  i := i +1;

	  k := k+1
	
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
