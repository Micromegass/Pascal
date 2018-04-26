


program Mini (input, output); 



var
number,
min : integer;



begin


writeln('enter nbr: ');



if eof then 
writeln('no input')

else 

begin 
readln(number);
min := number;

while not eof do
readln(number); 

if number < min then 
min := number
end; 

writeln('smallest number is ', min)

end.
