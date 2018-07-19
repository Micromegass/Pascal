

program minimum (input, output); 


var
i: integer;
Zahl : integer; 
max: integer;

begin 

writeln('enter 4 nbrs');
max := 0; 

for i:=1 to MAXE do 
begin
readln(Zahl); 
	if Zahl > max then 
	max := Zahl;
	
end;
writeln('maximum is: ', max)

end.
