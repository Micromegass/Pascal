


program students (input, output); 


const
MAXTEILNEHMER = 12;


type
tNatZahlPlus1 = 1..maxint;
tNatZahl = 0..maxint;
tstatus = (aktiv, passiv);
tIndex = 1..MAXTEILNEHMER;
tMAtrNrFeld = array[tIndex] of tNatZahlPlus1;
tStatusFeld = array[tIndex] of tStatus;



var
MatrNrFeld : tMatrNrFeld;
StatusFeld : tStatusFeld;
AnzahlSt : tNatZahl;
i : tIndex;
Status : char;



begin
write('wieviele Studenten nehen a Seminar teil?');
readln(AnzahlSt);

if (AnzahlSt) > MAXTEILNEHMER then 
begin
    writeln ('Bitte hoechstens ',
    MAXTEILNEHMER, ' Eingaben!');
    AnzahlSt := MAXTEILNEHMER
    
end; 


writeln ('Geben Sie Matr.Nr. und Aktivitaet der ',
            AnzahlSt, ' Teilnehmer ein:');
            
for i := 1 to AnzahlSt do 

begin 
write ('Matr.Nr. ');
readln (MatrNrFeld[i]);
write ('a - aktiv, p - passiv: '); 
readln (Status);
if Status = 'a' then 
StatusFeld[i] := aktiv
else 
StatusFeld[i] := passiv
end;

begin 
if StatusFeld[i] = aktiv then
begin
write ('Der Student mit der Matrikel-Nr. ');
      writeln (MatrNrFeld[i]);
      writeln ('hat mit Erfolg am Seminar ',
               'teilgenommen.');
      
end
end;

  writeln ('Liste aller aktiven Seminar-Teilnehmer');
  writeln ('--------------------------------------');
  
  
  for i := 1 to AnzahlSt do 
  if StatusFeld[i] = aktiv then 
	writeln (MatrNrFeld[i]);
   writeln;
   writeln ('Liste aller Zuhoerer im Seminar'); 
   writeln ('-------------------------------');
   
   
   for i := 1 to AnzahlSt do
   if StatusFeld[i] = passiv then 
   writeln (MatrNrFeld[i])
   
   end. 





