
program Maximum(input, output); 

{reads integers into an array and gives maximum}



const 
fieldarea = 5; 

type
tIndex = 1..fieldarea; 
tnumberarray = array[tIndex] of integer;

var 
i : tindex;
field : tnumberarray;
max : integer; 


begin
writeln('enter ', fieldarea, ' numbers');


for i := 1 to fieldarea do
readln(field[i]);
max := field[1];

for i := 2 to fieldarea do 
	if field[i] > max then 
	max := field[i];
	

writeln('highest number is: ', max)

end.



