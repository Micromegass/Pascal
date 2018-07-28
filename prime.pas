
program FindeNaechstePrimzahl (input, output);
{ bestimmt die zur Eingabezahl naechstgelegene(n)
  Primzahl(en) }
type
  tNatZahlPlus = 1..maxint;
var
  EinZahl,
  d : tNatZahlPlus; { d ist die Schrittweite,
                      "displacement" }
  gefunden : boolean;

function istPrimzahl (p : tNatZahlPlus) : boolean; { liefert true, falls p Primzahl,sonst false}
var
  q : tNatZahlPlus;
begin
if p < 2 then
istPrimzahl := false else { p >= 2 }
begin
q:= 2;
while (p mod q ) <> 1 do 
istPrimzahl := false;
q:= q+1
end
end; { istPrimzahl }

begin
  writeln ('Zahl eingeben: ');
  readln (EinZahl);
  { Um das Programm zu vereinfachen, verzichten wir
auf eine Ueberpruefung der Eingabe }
write ('Naechste Primzahl zu ', EinZahl, ' ist '); if istPrimzahl (EinZahl) then
    writeln (EinZahl)
else
if EinZahl = 1 then
writeln ('2':5) else {EinZahl <> 1 } begin
gefunden := false;
if odd (EinZahl) then
d := 2
else
d := 1;
repeat
if istPrimzahl (EinZahl + d) then begin
          { Primzahl oberhalb von EinZahl gefunden }
          gefunden := true;
          write (EinZahl + d : 5)
end;
if istPrimzahl (EinZahl - d) then begin
          { Primzahl unterhalb von EinZahl gefunden }
          gefunden := true;
          write (EinZahl - d : 5)
end;
d := d + 2 until gefunden; writeln
end {EinZahl <> 1 }
end. { FindeNaechstePrimzahl }
