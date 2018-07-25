

program seminar (input, output); 

const 
MAX = 6; 


type 
tStatus = (aktiv,passiv);
tIndex = 1..MAX; 
tTeilnahmeart = array [tIndex]  of tStatus; 
tmat = array [tIndex] of integer; 


var
Status : char; 
i : tIndex; 
Teilnahme : tTeilnahmeart;
mat : tmat; 

begin 

writeln('enter student number and status for students participation: ');
	
for i:= 1 to MAX do
	begin 
	writeln('enter student nbr: ');
	readln(mat[i]);
	writeln('enter type of participation: a = active, p = passive');
	readln(Status);
		if Status = 'a'then
		Teilnahme[i] := aktiv
		else 
		Teilnahme[i] := passiv
	end;
	
	writeln('List of active participants: ');
	
	for i:=1 to MAX do  
	 if Teilnahme[i] = aktiv then
	 begin
	 writeln('-------------------------------');
	 writeln(mat[i]); 
	 writeln('-------------------------------');
	 end;
	
    writeln('List of passive participants: ');

	for i:=1 to MAX do  
	 if Teilnahme[i] = passiv then
	 begin
	 writeln('-------------------------------');
	 writeln(mat[i]); 
	 writeln('-------------------------------');
	end;
	
	


end.
