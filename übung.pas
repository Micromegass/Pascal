



program Transponieren (input, output);
{ transponiert eine 5x5 Matrix von integer-Zahlen }
const
ZEILENSPALTENMAX = 5;
type
tZeileSpalte = 1..ZEILENSPALTENMAX;
tMatrix = array [tZeileSpalte, tZeileSpalte] of integer;
var
A : tMatrix;
i,
j : tZeileSpalte;




procedure transponiereMatrix (var ioMat : tMatrix);
{ transponiert die quadratische Matrix ioMat }
var
i,
j : tZeileSpalte; { Zeilen- und Spaltenindex }
hilf : integer;
begin
for i := 1 to ZEILENSPALTENMAX-1 do
for j:= i+1 to ZEILENSPALTENMAX do
begin
hilf := ioMat [i, j];
ioMat [i, j] := ioMat [j, i];
ioMat [j, i] := hilf
end
end; { transponiereMatrix }




