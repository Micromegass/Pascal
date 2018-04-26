
program Minimum (input, output);


const
FIELDSIZE = 5;


type 
tIndex = 1..5;
tfield = array[tIndex] of integer;




var
field : tfield;
i : tindex;
min : integer;
position : tindex; 


begin 

writeln('enter', FIELDSIZE, 'values: ');

for i := 1 to 5 do 
	readln(field[i]);
	min := field[1];
	position := 1;
	
for i := 2 to 5 do
	if field[i] < min then
	begin
	min := field[i];
	position := i;
	end;
	
	

	
writeln('lowest number is: ', min, 'on position: ', position);
	
end. 
