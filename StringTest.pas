


program flighttime (input, output); 




const
HOUR = 23;
MINSEC = 59;

type 
thour = 0..HOUR;
tminutesec = 0..MINSEC;

tTime = record
		  h,
		  m: thour;
		  s: tminutesec
		  end;
		  
tcarry= 0..1;
		  

var
departure,
arrival,
duration: tTime;


input: integer;
carry: tcarry;


begin 


duration.h := 0;
duration.m := 0;
duration.s := 0;


writeln('Bitte Abflugszeit eingeben: ');

repeat 
write('hour');
readln(input);

until (input >= 0) and (input <= HOUR);
departure.h := input;



repeat 
write('minute');
readln(input);

until (input >= 0) and (input <= MINSEC);
departure.m := input;

repeat 
write('second');
readln(input);
until (input >= 0) and (input <= MINSEC);


writeln;
writeln('Bitte Ankunftszeit eingeben: ');


repeat 
write('hour, arrival');
readln(input);

until (input >= 0) and (input <= HOUR);
arrival.h := input;



repeat 
write('minute, arrival');
readln(input);

until (input >= 0) and (input <= MINSEC);
arrival.m := input;

repeat 
write('second, arrival');
readln(input);
until (input >= 0) and (input <= MINSEC);
arrival.s := input; 


{calculating differnces seconds}

if arrival.s < departure.s then
	begin
	carry := 1;
	duration.s := minsec + 1 - departure.s + arrival.s;
	end

	else
	duration.s := arrival.s - departure.s;
	


{calculating differnces minutes}
if (arrival.m - carry) < departure.m  then
	begin 
	duration.m := minsec +1 - departure.m + arrival.m - carry;
	carry := 1
	end
	else 
	begin 
	duration.m := arrival.m -departure.m - carry; 
	carry:= 0
	end;
	

{calculating differnces hours}

if (arrival.h - carry ) < departure.h then 
	duration.h := HOUR +1 - departure.h + arrival.h -carry
	
	else 
	duration.h := arrival.h -departure.h -carry;
	
	writeln ('-------------------------------');
	writeln('duration of flight: ', duration.h, ':', 
			duration.m, ':', duration.s, ':')



end.
