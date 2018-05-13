



type 
tRefListe = ^tListe;
tListe = record 
		info : integer;
		next : tRefListe; 
		end;
		


function ListemElemSuchenTransp (

								inRefAnfang : tRefListe; 
								inZahl : integer) : tRefListe ;
								
var 
Zeiger ,
ErgebnisZeiger : tRefListe;
gefunden : boolean; 
Hilf : integer; 


begin 
if inRefAnfang = nil then
	
	ErgebnisZeiger := nil 
	else
	if inRefAnfang ^.info = inZahl then  {erste Element is das Gesuchte}
	Ergebniszeiger := inRefAnfang {nichts vertauscht}
	
	else 
	begin {gesuchtes Elem finden}
	
	Zeiger := inRefAnfang ;
	gefunden := false; 
	
	while (Zeiger^.next^.info <> 0 ) and not gefunden do 
	
	if Zeiger^.next^.info = inZahl then 
	begin {Elem gefunden, Infokomponenten werden vertauscht}
	Hilf := Zeiger^.next^.info;
	Zeiger^.next^.info := Zeiger^.info;
	Zeiger^.info := Hilf;
	ErgebnisZeiger := Zeiger;
	gefunden := true
	end 
	else 
	Zeiger := Zeiger^.next;
	if not gefunden then {keine Elem vorhanden}
	ErgebnisZeiger := nil; 
	
	end; 
	ListemElemSuchenTransp  := Ergebniszeiger
	end; 
	
	
	
	
