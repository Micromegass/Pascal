

program Flugzeit (input, output);
{ berechnet die Flugdauer aus Start- und Landezeit }
const
  MINSEK = 59;
  STUNDE = 23;
  
  
  
  type
  tMinSek = 0..MINSEK;
  tStunde = 0..STUNDE;
		tZeit = record
		h : tStunde;
		m,
		s : tMinSek end; { tZeit }
		  tUebertrag = 0..1;
var
  Abflug,
  Ankunft,
  Flugdauer : tZeit;
  Uebertrag : tUebertrag;
begin
  Flugdauer.h := 0;
  Flugdauer.m := 0;
  Flugdauer.s := 0;
  Uebertrag := 0;
  writeln ('Bitte die Abflugzeit eingeben');

write ('Stunde: ');
readln (Abflug.h);

 write ('Minute: ');
readln (Abflug.m);

write ('Sekunde: ');
readln (Abflug.s);
writeln;
writeln ('Bitte die Ankunftzeit eingeben'); 

    write ('Stunde: ');
    readln (Ankunft.h);
    
    
 write ('Minute: ');
readln (Ankunft.m);

  write ('Sekunde: ');
readln (Ankunft.s);


{ Sekunden-Differenz berechnen } if Ankunft.s < Abflug.s then begin
  Uebertrag := 1;
  Flugdauer.s := MINSEK + 1 - Abflug.s + Ankunft.s
end else
  Flugdauer.s := Ankunft.s - Abflug.s;
{ Minuten-Differenz berechnen }
if (Ankunft.m - Uebertrag) < Abflug.m then begin
  Flugdauer.m := MINSEK + 1 - Abflug.m +
                 Ankunft.m - Uebertrag;
  Uebertrag := 1
end
else
begin
  Flugdauer.m := Ankunft.m - Abflug.m - Uebertrag;
Uebertrag := 0 end;
{ Stunden-Differenz berechnen }
if (Ankunft.h - Uebertrag) < Abflug.h then
  Flugdauer.h := STUNDE + 1 - Abflug.h +
                 Ankunft.h - Uebertrag
else
  Flugdauer.h := Ankunft.h - Abflug.h - Uebertrag;
{ Ausgabe }
writeln;
writeln ('Flugdauer: ', Flugdauer.h, ':',Flugdauer.m, ':', Flugdauer.s) 

end. { Flugzeit }
