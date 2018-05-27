

const
FELDGROESSE = 10 ;

type 
tIndex = 1..FELDGROESSE ;
tFeld = array[tIndex] of integer; 

function rekFeldMax (
	inMaxPos :tIndex;
	var inFeld :tFeld) : tIndex;


	var
    lokMaxPos : tIndex; { Hilfsvariable }


	
	begin
	if inMaxPos = FELDGROESSE then 
	rekFeldMax := inMaxPos
	else 
	 lokMaxPos := rekFeldMax (inMaxPos + 1, inFeld);
	 if inFeld[inMaxPos] < inFeld[lokMaxPos] then
     rekFeldMax := lokMaxPos
     else
      rekFeldMax := inMaxPos
      end
  end; { rekFeldMax }
