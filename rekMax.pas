


program Reking (input, output); 



const
FELDGROESSE = 10; 

type 
tIndex = 1..FELDGROESSE; 
tFeld = array [tIndex] of integer; 


						
						
function rekFeldMax (
inMaxPos : tIndex;
var inFeld : tFeld) : tIndex;
{ bestimmt rekursiv in dem integer-Feld inFeld ab
    Position inMaxPos die Position des Maximums }
var
    lokMaxPos : tIndex; { Hilfsvariable }
begin
if inMaxPos = FELDGROESSE then
      { Rekursionsabbruch }
      rekFeldMax := inMaxPos
else begin
     
      lokMaxPos := rekFeldMax (inMaxPos + 1, inFeld);
     
if inFeld[inMaxPos] < inFeld[lokMaxPos] then
        rekFeldMax := lokMaxPos
else
        rekFeldMax := inMaxPos
end
end; { rekFeldMax }


begin 


end.
