

program MinArray(input, output); 

const
MAX = 100; 
MAXPLUS1 = 101;

type
tIndex = 1..max;
tField = array[tIndex] of integer;
tIndexPlus1 = 1..MAXPLUS1;


var
field : tfield; 
i: tIndexPlus1;
found : boolean; 
size,
searchvalue : integer;



begin 

repeat 
write('How many numbers would you like to enter?  (maximum: ', MAX, ')');
readln(size);
until (1 <= size) and (size <= MAX);


for i := 1 to size do
begin write ('value', i, ': ') ;
readln(field[i]);
end;

write('searchvalue: ');
readln(searchvalue);

i := 1;

while (i<= size) and (not found) do
	if field[i] = searchvalue then
	found := true 
	else i := i+1;
	
	if found then
	writeln('value is on position', i)
	else 
	writeln('value does not exist')

end. 

end.
