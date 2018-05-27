

program TesteBlattMax (input, output);
 
 
  type
  tNatZahl = 1..maxint;
  tRefBinBaum = ^tBinBaum;
  tBinBaum = record
               Wert:tNatZahl;
               links:tRefBinBaum;
               rechts:tRefBinBaum
             end;
 
  var
  Wurzel : tRefBinBaum;
  blaetterSindMax : Boolean;
 
  function BlattMax ( inRefWurzel : tRefBinBaum;
                        pfadMax : tNatZahl) : Boolean;
  { prüft ob alle Blätter des Baumes die Maxima der Pfade zu ihnen sind }
  { pfadMax uebergibt das jeweilige aktuelle Maxium aller [Knoten]^.Wert
  * auf dem Weg zum Blatt an. [Blatt]^.Wert wird schliesslich mit 
  * pfadMax verglichen, und wenn [Blatt]^.Wert >= pfadMax gibt die 
  * function den Wert true zurueck. Beim ersten Aufruf der function
  * (aus dem programm) muss pfadMax mit dem Wert inRefWurzel]^.Wert
  * uebergeben werden oder aber dem kleinsten Wert tNatZahl = 1.
  * Nebenbei: nach Muss Regel 9 muesste pfadMax eigentlich inPfadMax
  * heissen }
 
      var
    WegMax : tNatZahl;
    BlattIstMax,
    BlattIstMaxLinks,
    BlattIstMaxRechts : boolean;
 
  begin    
    WegMax := pfadMax;
    if (inRefWurzel^.links = nil) and (inRefWurzel^.rechts = nil) then
    begin { Blatt erreicht, Funktionswert für Blatt bestimmen }
      if inRefWurzel^.Wert < WegMax then
        BlattIstMax := false
      else
        BlattIstMax := true
    end { Blatt getestet, Funktionswert für Blatt bestimmt }   
    else
    begin { Blatt nicht erreicht }
      { Test ob aktueller Knoten das Maximum ist }
      if inRefWurzel^.Wert > WegMax then
        WegMax := inRefWurzel^.Wert;
      { Unterbaeume testen, wenn sie existieren }  
        if (inRefWurzel^.links <> nil) then
          BlattIstMaxLinks := BlattMax(inRefWurzel^.links, WegMax);
        if (inRefWurzel^.rechts <> nil) then
          BlattIstMaxRechts := BlattMax(inRefWurzel^.rechts, WegMax);
      { Kombination der Funktionswerte der Teilbaeume }
      BlattIstMax := BlattIstMaxLinks and BlattIstMaxRechts    
    end; { Blatt nicht erreicht }
    BlattMax := BlattIstMax { Funktionswert uebergeben }
  end; { BlattMax }
 
  procedure BaumAufbauen (var outWurzel : tRefBinBaum) ;
 
  var 
    index,
    Zahl : integer;
    elter, neuerKnoten : tRefBinBaum;    
 
  function KnotenVonIndex (baum : tRefBinBaum; index : integer) : tRefBinBaum;
 
    var
      elter : tRefBinBaum;
    begin
      if (index = 1) then
        KnotenVonIndex := baum
      else
      begin
        elter := KnotenVonIndex(baum, index div 2);
        if ( (index mod 2 ) = 0 ) then
          KnotenVonIndex := elter^.links
        else
          KnotenVonIndex := elter^.rechts
      end;
    end;
 
  begin
    read (index);
    new (outWurzel);
    read (Zahl);
    outWurzel^.Wert := Zahl;
    read (index);
    while (index <> 0) do
    begin            
      elter := KnotenVonIndex(outWurzel, index div 2);
      new (neuerKnoten);
      read (Zahl);    
      neuerKnoten^.Wert := Zahl;  
      if ( (index mod 2 ) = 0 ) then
        elter^.links := neuerKnoten
      else
        elter^.rechts := neuerKnoten;
      read (index);      
    end;    
  end; { BaumAufbauen }
 
begin
  writeln('Bitte Baum in level-order eingeben Eingabeformat: Immer erst der Index eines Knotens, dann dessen Wert:');
  BaumAufbauen (Wurzel);
  blaetterSindMax := BlattMax(Wurzel, 1);
  if blaetterSindMax then
    writeln ('Alle Blaetter sind groesser als alle Knoten auf den jeweiligen Pfaden zu ihnen.')
  else
    writeln ('Mind. ein Blatt ist nicht groesser als alle Knoten auf seinem Pfad.');
end. { TesteBBKnotenzahl }
