program backwards (input, output);

type
tindex = 1..5;

tNumberfield = array[tindex] of integer;

var 
field : tnumberfield;
i : tindex; 


begin 

for i:= 1 to 5 do

begin
write('please insert number ', i , ' '); 
readln(field[i])
end; 

for i := 5 downto 1 do 
writeln(field[i])
end.
