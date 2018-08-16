



program divide (input, output); 

type
tNatZahl = 0..maxint; 



var
erg,
rest :tNatZahl;

procedure divison (inDividend,
					inDivisor: tNatZahl;
					
					 var outErg,outRest: tNatZahl
					
					);


begin 

if inDivisor = 0 then 
begin 
outRest:=0;
outErg:=0
end 
else 
begin
outRest:= inDividend;
outErg:=0;
while outRest >= inDivisor do 
begin 
outRest := outRest - inDivisor;
outErg := outErg +1 
end
end
end;


begin 

erg := 0;
rest:= 0;
divison(100,10, erg, rest);

write(erg);

end.
