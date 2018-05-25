procedure moveToFront (
                inSuchwert : integer;
            var ioAnfang : tRefListe;
            var outGefunden : boolean);
{ bestimmt in einer linearen Liste das erste Element mit dem 
  Wert inSuchwert und positioniert es als erstes Listen-
  element }

  var 
  ZuletztGeprueftesElement,
  UmhaengeHilfe : tRefListe;
  gefunden : boolean;

begin
  gefunden := false;
  if ioAnfang <> nil then { Liste ist nicht leer }
    if ioAnfang^.info = inSuchwert then 
      { gefundenes Element ist schon das erste Element }
      gefunden := true
    else 
    begin
      ZuletztGeprueftesElement := ioAnfang;
      while (ZuletztGeprueftesElement^.next <> nil) and not gefunden do
        if ZuletztGeprueftesElement^.next^.info = inSuchwert then
        begin { Suchwert ist gefunden }
          gefunden := true;
          
          
          
          UmhaengeHilfe := ZuletztGeprueftesElement^.info;
ZuletztGeprueftesElement^.next := ioAnfang^.next;
ioAnfang^.next := UmhaengeHilfe;
          
          
          
        end
        else 
          ZuletztGeprueftesElement := ZuletztGeprueftesElement^.next
    end; { else }
  outGefunden := gefunden
end; { moveToFront }
