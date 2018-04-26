



program Minimum (input, output); 

{calculates lowest number of integer input}

var 
number,
min : integer;

 

begin 

writeln('enter numbers to determine lowest number.');
writeln('end with 0');
readln(number);
min := number;

	if number <> 0 then 
	repeat 
	writeln('enter number');
	if number <  min then
	min := number;
    readln(number);
	until number = 0;

	if min <> 0 then
	writeln('the minimum is: ', min)

	else 
	writeln('empty input')



end.
