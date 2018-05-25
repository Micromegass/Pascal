

program TesteSortiereListe(input, output);
{ sortiert eine Liste durch Einfügen }
 
  type
  tRefListe = ^tListe;
  tListe = record
             wert : integer;
             next : tRefListe;
           end;

  var
  RefListe : tRefListe;

  procedure SortiereListe (var ioRefListe : tRefListe);
  { sortiert eine nicht-leere lineare Liste aufsteigend }

    var
    EinfuegePosition,
    WirdJetztSortiert,
    IstSchonSortiert : tRefListe;
    istEingefuegt : boolean;

  begin
    { die einelementige Liste ist immer sortiert }
    IstSchonSortiert := ioRefListe;
    { wir beginnen das zweite Element zu sortieren }
    WirdJetztSortiert := ioRefListe^.next;
    { solange es noch etwas zu sortieren gibt }
    while WirdJetztSortiert <> nil do
    begin
      istEingefuegt := false;
      
      
      if WirdJetztSortiert^.wert <= ioRefListe^.wert then 
      {aktuelles Element am kleinsten.}
	  begin 
		IstSchonSortiert^.next := WirdJetztSortiert^.next;
		WirdJetztSortiert^.next := ioRefListe; 
		ioRefListe := WirdJetztSortiert 
	  end 
	  else 
	  if WirdJetztSortiert^.wert > IstSchonSortiert^.wert then
	  {bisher groesste element und bleibt deshalb an seiner Position}
		IstSchonSortiert := WirdJetztSortiert
	  else 
	  begin 
	  {Postion wird nun gesucht und Element eingefügt}
		EinfuegePosition := ioRefListe;
		
		while EinfuegePosition^.next^.wert < WirdJetztSortiert^.wert
		do 
		Einfuegeposition := Einfuegeposition^.next ;
		IstSchonSortiert^.next := WirdJetztSortiert^.next ;
		WirdJetztSortiert^.next := EinfuegePosition^.next; 
		EinfuegePosition^.next := WirdJetztSortiert
		end; 
  
         WirdJetztSortiert := IstSchonSortiert^.next
        end
    end
  end;

  procedure Anhaengen(inZahl : tNatZahl; var ioListe : tRefListe);
  { Haengt inZahl an ioListe an }
  
    var 
    Zeiger : tRefListe;
    
  begin
    Zeiger := ioListe;
    if Zeiger = nil then
    begin
      new(ioListe);
      ioListe^.wert := inZahl;
      ioListe^.next := nil;
    end
    else
    begin
      while Zeiger^.next <> nil do
        Zeiger := Zeiger^.next;
      new(Zeiger^.next);
      Zeiger := Zeiger^.next;
      Zeiger^.wert := inZahl;
      Zeiger^.next := nil;
    end;
  end;

  procedure ListeEinlesen(var outListe:tRefListe);
  { liest eine Folge von Zahlen ein }
  
    var
    Liste : tRefListe;
    Zahl : integer;
    
  begin
    Liste := nil;
    read(Zahl);
    while Zahl<>-1 do
    begin
      Anhaengen(Zahl, Liste);
      read(Zahl)
    end;
    outListe := Liste
  end;

  procedure GibListeAus(inListe : tRefListe);
  { Gibt die eine nicht-leere Liste aus }
  
    var 
    Zeiger : tRefListe;
    
  begin
    Zeiger := inListe;
    write(Zeiger^.wert);
    Zeiger := Zeiger^.next;
    while Zeiger <> nil do
    begin
      write(', ');
      write(Zeiger^.wert);
      Zeiger := Zeiger^.next;
    end;
    writeln('')  
  end;

begin
  ListeEinlesen(RefListe);
  SortiereListe(RefListe);
  GibListeAus(RefListe)
end.
