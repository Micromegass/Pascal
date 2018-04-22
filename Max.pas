
program Maximum (input, output);
 
{gives out the maximum of user-input intergers}
	


const 
COUNT = 4; {Number of inputs}


type
tnumber = 1..COUNT;

var 
i : tnumber;

number : integer;
max : integer;



begin 

writeln('please enter ', COUNT,  ' numbers');
writeln('to determine the higehest number ');

write('1st value: '); 

readln(number);
max := number;




for i := 2 to COUNT do 
begin 
write (i, ' .value: ');
readln(number); 

if number > max then
max := number 

end; 
writeln('Highest number is: ', max)
end.






end. 

