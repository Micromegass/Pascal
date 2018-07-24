


program readint (input, output); 


const
MAX = 12; 

type
tIndex = 1..MAX;

var
i: tIndex; 
nbrs : array [tIndex] of integer; 





begin 

writeln('enter nbrs: '); 

for i:=1 to MAX do
begin
	writeln('nbr please: ');
	readln(nbrs[i])
end; 


for i:=MAX downto 1 do 
begin
	write('nbr: ');
	write;
	writeln(nbrs[i]);
	write
end

end.
a
