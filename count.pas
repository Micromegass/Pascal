


program Dreieck(input,output); 
{Liest eine natürliche Zahl n ein und gibt ein Dreieck aus 1+…+n X-Symbolen aus.}   

var   
n:integer;   
i:integer;   
j:integer; 

begin  
writeln('Geben Sie eine natürliche Zahl ein: ');   
readln(n);   
for i:=1 to n do   
begin     
for j:=1 to i do       
write('X');     
writeln()  
end 
end.
