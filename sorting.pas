

program maxi (input, output);


type 
tIndex = 0..maxint; 

var 
max, 
Eingabe : integer;

begin 

writeln ('Zahlen eingeben, null beedet eingabe: '); 
readln(Eingabe); 

if Eingabe = 0 then 
writeln('leere eingabefolge')
else 

begin
max := 0;
while Eingabe <> 0 do
 begin
	if Eingabe > max then 
	max := Eingabe;
	readln(Eingabe)
  end

end;

if max <> 0 then 
write('Maximum ist: ', max);
end. 
	

