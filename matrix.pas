

program matrix (input, output);

{returns column and row sum of matrix}


const 
ZEILENMAX = 3;
SPALTENMAX = 4;

type
tZeile = 1..ZEILENMAX;
tSpalte = SPALTENMAX;


tMatrix = array [tZeile, tSpalte] of integer;
tZeilensumme = array [tZeile] of integer;
tSpaltensumme = array [tSpalte] of integer;

var
A : tMatrix;
B : tZeilensumme;
C : tSpaltensumme;
i : tZeile;
j : tSpalte; 


begin 
{lesen der Matrixwerte in A}
for i := 1 to ZEILENMAX do 
	for j: 1 to SPALTENMAX do
		readln(A[i,j]);


{Berechnen der Zeilensumme in B}

for i := 1 to ZEILENMAX do 

begin
	B[i] := 0 
		for j := 1 to 
		











