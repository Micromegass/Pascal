



program search (input, output);


const
MAXI = 20; 


type 
tIndex = 1..MAXI;
tFeld = array [tIndex] of integer; 



var
i : tIndex; 
Feld : tFeld; 
Suchwert : integer; 


begin 

writeln('fuenf Zahlen eingeben: ');

for i:= 1 to MAXI do 
begin 
	readln(Feld[i])
end; 

writeln('Suchwert eingeben: ');
readln(Suchwert); 

for i:=1 to MAXI do 
	begin 
	 if Suchwert = Feld[i] then
	 writeln('Suchwert vorhanden und an Position: ', i)
	 else 
	 writeln('Suchwert nicht vorhanden');
	end;
	
	
end.
