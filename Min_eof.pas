
program Minimum (input, output);


 

var

number : integer;
min : integer;


begin 


writeln('enter number');

if eof then 
writeln('no nbr')

else 
begin
readln(number);
min := number;
repeat 
readln(number);
if number < min then
min := number;
until eof;

write('smallest number is, ', min)
end;
end.
