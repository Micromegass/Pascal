

program Flugzeit2 (input, output);




const 
MINSEK = 69; 
STUNDE = 23; 

type
tMinsek = 0..69;
tStunde = 0..23;

tZeit = record 
		h: tStunde;
		m: tMinsek;
		s: tMinsek;
		end; 
		
tUebertrag = 0..1;

var 
Abflug,
Ankunft,
Flugdauer : tZeit;
Uebertrag : tUebertrag;

procedure ZeitLesen (Flugdauer: tZeit);


var 
Eingabe: integer; 

begin 
repeat 
	write('Stunde: ');
	readln(Eingabe) 
until (Eingabe >= 0) and (Eingabe <= STUNDE);

Flugdauer.h := Eingabe; 

repeat 
	write('Minute: ');
	readln(Eingabe) 
until (Eingabe >= 0) and (Eingabe <= MINSEK);

Flugdauer.m := Eingabe; 


repeat 
	write('Sekunde: ');
	readln(Eingabe) 
until (Eingabe >= 0) and (Eingabe <= MINSEK);

Flugdauer.s := Eingabe; 

end;


begin 
writeln('Bitte Abflugzeit eingeben: ');
ZeitLesen(Abflug);
writeln;


writeln('Bitte Ankunftszeit eingeben: ');
ZeitLesen(Ankunft); 

if Ankunft.s < Abflug.s then
	begin
	Uebertrag := 1;
	Flugdauer.s := MinSek + 1 - Abflug.s + Ankunft.s;
	end

	else
	Flugdauer.s := Ankunft.s - Abflug.s;
	


{calculating differnces minutes}
if (Ankunft.m - Uebertrag) < ABflug.m  then
	begin 
	Flugdauer.m := MinSek +1 - Abflug.m + Ankunft.m - Uebertrag;
	Uebertrag := 1
	end
	else 
	begin 
	Flugdauer.m := Ankunft.m -Abflug.m - Uebertrag; 
	Uebertrag:= 0
	end;
	

{calculating differnces hours}

if (Ankunft.h - Uebertrag ) < Abflug.h then 
	Flugdauer.h := STUNDE +1 - Abflug.h + Ankunft.h -Uebertrag
	
	else 
	Flugdauer.h := Ankunft.h -Abflug.h -Uebertrag;
	
	writeln ('-------------------------------');
	writeln('Flugdauer: ', Flugdauer.h, ':', 
			Flugdauer.m, ':', Flugdauer.s, ':')



end.







