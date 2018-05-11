


program FeldSort3 (input, output);

const 
FELDGROESSE = 5;


type 
tIndex = 1..FELDGROESSE;
tFeld = array[tIndex] of integer;



var
EingabeFeld : tFeld; 
index : tIndex; 

procedure FeldSortieren (

	inoutSortFeld : tFeld); 
	
	var 
	Minpos, 
	i : tIndex;
	
	
	function FeldMinimumPos (
		inFeld : tFeld;
		inVon, inBis : tIndex) : tIndex;
		
		var 
		MinimumPos, 
		j : tIndex; 
		
		
		begin 
		MinimumPos := inVon;
		for j:= inVon + 1 to inBis do 
			if inFeld[j] < inFeld[MinimumPos] then 
			MinimumPos := j;
			FeldMinimumPos := MinimumPos
		end; 
		
		
		procedure vertauschen (var ioHin, ioHer : integer); 
		
		var Tausch :integer; 
		
		begin 
		Tausch := ioHin;
		ioHin := ioHer;
		ioHer := Tausch 
		end; 
		
		
		procedure FeldSortieren (var ioSortFeld : tFeld);
		
		
		var 
		Minpos,
		i: tIndex;
		
		
		
		begin 
		for i := 1 to FELDGROESSE -1 do 
		begin 
		Minpos := FeldMinimumPos (ioSortFeld, i , FELDGROESSE); 
		
		vertauschen (ioSortFeld[MinPos], ioSortFeld[i])
		end 
		
		end; 
		
		begin 
		
		end. 
	
	
		
		
		
	

