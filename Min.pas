


program Minimum (input, output);

{reads integer input and prints the lowest number}


var 
number : integer;
min : integer;

begin

writeln('enter full numbers to get the lowest number.');
writeln('Exit with 0: ');
readln(number);
min := number;


while number <> 0 do
a
begin
if number < min then
min := number;
readln(number)
end ;

if min <> 0 then
writeln('lowest number is ', min)

else 
writeln('only a 0 was entered')




end.
