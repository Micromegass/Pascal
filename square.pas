
program SquareNummbers (input, output);

const 
MAXINDEX = 100;

type 
tNumber = 1..Maxindex; 


var
i : tNumber;


begin 

for i := 1 to Maxindex do 

writeln (i:2, sqr (i):5)


end.
