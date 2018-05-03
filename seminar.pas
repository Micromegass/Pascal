
program Seminar (input, output);



const 
MAXTEILNEHMER = 12;
TAGE = 31;
MONAT = 12;
MINJAHR =1900;
MAXJAHR = 2010;


type
tTag = 1..TAGE;
tMonat = 1..MONAT;
tJahr = MINJAHR..MAXJAHR;
tNatZahlPlus1 = 1..maxint;
tNatZahl = 0..maxint;
tStatus = (aktiv, passiv);
tIndex = 1..MAXTEILNEHMER;
tString = string [20];

tSeminarStudent =
	record
	Name :tString;
	Geburtstag : 
		record 
		Tag: tTag; 
		Monat : tMonat;
		Jahr: tJahr; 
		end;
		
		MatrikelNr : tNatZahlPlus1;
		Status : tStatus;
		end;

tTeilnehmerfeld = array[tIndex] of tSeminarStudent;

var 
Teilnehmerfeld : tTeilnehmerfeld; 
AnzStud : tNatZahl; 
i : tIndex;
Status : char;





begin 

write ('How many students participate at the seminar?');
readln(AnzStud);

if AnzStud > MAXTEILNEHMER then 
begin 
writeln ('Please only enter', MAXTEILNEHMER, 'amount of participants');
AnzStud := MAXTEILNEHMER; 
end;


writeln('please enter name, studentnumber and and activity of', 
		AnzStud:3, ': ');
		
	for i := 1 to AnzStud do 
	begin
	write('name: ');
	readln(Teilnehmerfeld[i].Name);
	write('studentnumber: ');
	read(Teilnehmerfeld[i].MatrikelNr);
	write('a - active, p - passive');
	readln(Status);
	
	if Status = 'a' then 
		Teilnehmerfeld[i].Status := aktiv
	else 
		Teilnehmerfeld[i].Status := passiv
	end; 
	
{Scheine ausgeben}

	writeln;
	
	for i := 1 to AnzStud do
	begin 
	if Teilnehmerfeld[i].Status = aktiv then 
	begin 
	writeln('student ', Teilnehmerfeld[i].Name);
	writeln('with studentnumber', Teilnehmerfeld[i].MatrikelNr);
	writeln('successfully participate at seminar');
	
	writeln;
	
		end 
	end; 
	
	
writeln('list of all acitve participants: ');
writeln('---------------------------');

for i := 1 to AnzStud do
	if Teilnehmerfeld[i].Status = aktiv then 
	writeln(Teilnehmerfeld[i].Name);
	writeln;

	writeln('list of all passive participants: ');
	writeln('---------------------------');

for  i:=1 to AnzStud do 
if Teilnehmerfeld[i].Status = passiv then 
	writeln(Teilnehmerfeld[i].Name);

end.
	







