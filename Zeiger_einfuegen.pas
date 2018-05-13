


type 
tRefListe = ^tListe; 
tListe = record
		info : integer; 
		next : tRefListe;
		end; 
		
		

procedure SortiertEinfügen (inZahl: integer; 
							var ioRefAnfang: tRefListe); 
							
							
		
		var
		Zeiger, 
		RefNeu : tRefListe;
		gefunden : boolean; 
		
		

begin 

new (RefNeu);
RefNeu^.info := inZahl 

if ioRefAnfang = nil then 
	{Liste leer}
RefNeu^.next := ioRefAnfang;
ioRefAnfang := RefNeu
end 

else 
if ioRefAnfang^.info > inZahl 		{Element am Anfang eingefügt}
	begin 
	RefNeu^.next := ioRefAnfang;
	ioRefAnfang := RefNeu
	end 

else 
	{Einfügeposition suchen}

begin 
	
	gefunden := false; 
	Zeiger := ioRefAnfang; 
	
		while (Zeiger^.next <> nil ) and (not gefunden) do 
		
		if Zeiger^.next.info > inZahl then 
		
		gefunden := true; 
		
		else 
		
		Zeiger := Zeiger^.next 
		
		if gefunden := true then 
		begin 
		RefNeu^.next := Zeiger^.next; 
		Zeiger^.next := RefNeu 
		end 
		else
		begin 
		Zeiger^.next := RefNeu; 
		RefNeu^.next := nil
		
		end 
		end 
		end ; 
		
	
		
		
		
