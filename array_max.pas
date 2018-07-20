


program maxint (input, output); 

const
MAXI = 5; 


type 
tIndex = 0..5; 
tFeld = array [tIndex] of integer; 



var 
i : tIndex; 
max : integer; 
Feld : tFeld; 


begin 

max:=0;
for i:=1 to MAXI do 
	begin
	readln(Feld[i]);
	if Feld[i] > max then 
	max := Feld[i]
	end;
	
	writeln('maximum is: ', max)
	

end.
