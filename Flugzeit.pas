
program Flugzeit2 (input, ouput);

const 
STUNDE = 23;
MINSEK = 59;


type 
tZeit = record 
		h: 0..STUNDE;
		m: 0..MINSEK;
		s: 0..MINSEK;
		end;
		
tUebertrag = 0..1;


var
Abflug,
Ankunft,
Flugdauer : tZeit; 
Uebertrag : tUebertrag;

procedure ZeitLesen (Zeit:tZeit);

	var 
	Eingabe: integer;
	
	begin 
	repeat 
	write('Stunde:');
	readln(Eingabe)
	until (Eingabe > 0 ) and (Eingabe <= STUNDE);
	
	Zeit.h := Eingabe;
	
	
	repeat 
	write('Minute:');
	readln(Eingabe)
	until (Eingabe > 0 ) and (Eingabe <= MINSEK);
	
	Zeit.m := Eingabe;
	
	
	
	repeat 
	write('Minute:');
	readln(Eingabe)
	until (Eingabe > 0 ) and (Eingabe <= MINSEK);
	
	Zeit.s := Eingabe;
	
	
	
	begin 
	writeln('Ankunft eingeben')
	ZeitLesen(Abflug);
	writeln; 
	
	writeln('Ankunft eingeben');
	ZeitLesen(Ankunft);
	

	
	
	
	
	
	
