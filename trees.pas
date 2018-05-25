
tRefBinBaum = ^tBinBaum;
tBinBraum = record
			info: integer;
			rechts: tBinBaum;
			links: tBinBaum;
			end 
			


function KnotenSuchen (inZahl: integer;
						inRefWurzel:tRefBinBaum) : tRefBinBaum;
						


	var
	Zeiger : tRefBinBaum; 
	gefunden: boolean; 


	begin 
	
	Zeiger := inRefWurzel;
	gefunden := false; 
	
	while (Zeiger <> nil ) and Zeiger not gefunden 
	begin
	
	if inZahl = ^Zeiger.info then 
		gefunden := true 
	else 
		if inZahl > Zeiger^.info then 
		Zeiger := Zeiger^.links 
	
	else 
		Zeiger := Zeiger^.rechts 
    end; 
    
    KnotenSuchen := Zeiger
    end; 
	
	
