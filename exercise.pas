

type
tRefBinBaum = ^tBinBaum
tBinBaum = record 
			info : integer; 
			rechts : tRefBinBaum;
			links : tRefBinBaum;
			end;
			

function ( inZeiger : tRefBinBaum ) : tRefBinBaum;


	var
	HilfsZeig : tRefBinBaum; 
	
	begin 
	HilfZeig := inZeiger^.rechts
	
	
	while Hilfzeig^.links <> nil
	
	
	
