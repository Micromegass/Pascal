


program matrix (input, output); 


const
ZEIL = 3; 
SPALT = 4; 

type 
tZeile = 1..ZEIL;
tSpalte = 1..SPALT;
tMatrix = array [tZeile, tSpalte] of integer; 
tZeilensumme = array [tZeile] of integer; 
tSpaltensumme = array [tSpalte] of integer; 

var 
A : tMatrix;
B : tZeilensumme;
C:  tSpaltensumme;
i : tZeile;
j : tSpalte;

begin 

writeln('Matrixwerte eingeben: ');
 for i:=1 to ZEIL do 
  for j:=1 to SPALT do 
	readln(A[i,j]); 
	
{Zeilensumme}

for i:=1 to ZEIL do 
begin 
  B[i] := 0; 
  for j:=1 to SPALT do
  B[i] := B[i] + A[i,j]
end; 

{Spaltensumme}

for j:=1 to SPALT do 
begin 
  C[j] := 0; 
  for i:=1 to ZEIL do
  C[j] := C[j] + A[i,j]
end; 


{Drucken}

writeln;

for i:=1 to ZEIL do 
begin 
 for j:= 1 to SPALT do
 write(A[i,j]:5);
 writeln (B[i]:10)
end; 

writeln;

for j:=1 to SPALT do
  write (C[j]:5)


end.


