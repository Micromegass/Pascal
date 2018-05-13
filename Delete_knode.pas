


type 
tRefListe = ^tListe ;
tListe = record 
			info: integer;
			next: tRefListe;
			end; 


procedure ListenElemEntfernen (inZahl: integer; 
								var ioRefAnfang :tRefListe;
								var outGefunden: boolean);
								

{entfernt aus einer Liste mit Anfangszeiger ioRefAnfang das erste
Element mit dem Wert inZahl}


var 
Zeiger : tRefListe;
gefunden:boolean; 

procedure Abhaengen (var ioZeig : tRefListe);
	
	{haengt element ab auf das ioZeig zeigt}
	
	
var 
HilfsZeig : tRefListe; {Hilfsvariable}

begin 
Hilfszeig := ioZeig;
ioZeig := ioZeig^.next;
dispose (Hilfszeig)
end; 


begin 
if ioRefAnfang = nil then {Liste leer}
gefunden := false 


else 
if ioRefAnfang^.info  = inZahl then  {erstes Element entfernen}
begin 
	Abhaengen (ioRefAnfang);
	gefunden := true
	
end 
else 

begin {gesuchtes element bestimmen} 

Zeiger := ioRefAnfang;
gefunden := false ;

	while (Zeiger^.next <> nil ) and not gefunden do 
	
	if Zeiger^.next^.info = inZahl then 
	begin 
	Abhaengen (Zeiger^.next); 
	gefunden := true 
	end 
	
	else  {gesuchtes Elem kommt nicht vor}
	Zeiger := Zeiger^.next 
	
	end; 
	outGefunden := gefunden 
	end;
	

	
