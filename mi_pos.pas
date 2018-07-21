



program minpos (input, outpiut);

const 
MAXI = 5; 


type
tIndex = 1..MAXI;
tFeld = array [tIndex] of integer;

var
min : integer; 
Feld : tFeld; 
i : tIndex; 
pos : tIndex; 



begin 
pos := 1;
min := maxint;
for i:=1 to 5 do 
begin 
	readln(Feld[i]);
	if Feld[i] < min then 
	begin
	min := Feld[i];
	pos := i
	end

end; 

writeln('minimum is ', min);
writeln('postition is ', pos)




end. 
