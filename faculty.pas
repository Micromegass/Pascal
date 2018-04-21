


program faculty (input, output);

type 
tNumber = 0..maxint;

var
i : tNumber;
numberinput,
result : integer; 


begin 

writeln('Calculate the faculty of a full numeber. Please enter a number');
readln(numberinput);


	if numberinput < 0 then 
	writeln('this is not a full number')
	
	else 	
	begin {beginning loop}
		result := 1;
		for i := 1 to numberinput do
		result := result*i;
		
		writeln('the faculty of your number is ', result);

	
   end {ending loop}
end.{ending program}
