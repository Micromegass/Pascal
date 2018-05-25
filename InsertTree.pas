

type
tRefBinBaum = ^tBinBaum;
tBinBaum  = record
			info : integer;
			rechts: tRefBinBaum;
			links: tRefBinbaum;
			end; 
			
			


procedure Insert ( inZahl : integer; 
					var ioRefWurzel : tRefBinBaum); 
					
					
		var 
		RefSohn,
		RefVater: tRefBinBaum;
		gefunden : boolean; 
		
		

begin

	RefSohn := ioRefWurzel;
	gefunden := false ;
	
	
	while (RefSohn <> nil) and (not gefunden) do 
	
		if RefSohn^.info = inZahl  then
		gefunden := true
		else 
		begin
		RefVater := RefSohn;
		if inZahl < RefSohn^.info then
		RefSohn := Refsohn^.links
		
		else 
		RefSohn := Refsohn^.rechts
	
	end

end; {while}

	if not gefunden then 
	new (RefSohn); 
	RefSohn^.info := inZahl;
	RefSohn^.links := nil; 
	RefSohn.^.rechts := nil
	
	
	if ioRefWurzel = nil then 
	ioRefWurzel := RefSohn
	else 
		if inZahl < RefVater^.info then 
		RefVater^.links := RefSohn
		else 
		RefVater^.rechts := RefSohn 
		
	end 
	end; 
	

	
	
	
	
	
	
	
	
