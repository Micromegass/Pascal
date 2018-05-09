program LoesungSuchen (input, output); { bestimmt die Loesungen der Gleichung
  a*x*x + b*x + c = 0.0 fuer einzulesende a, b, c;
  Vorbedingung: a<>0.0 }
var
  KoeffA,
  KoeffB,
  KoeffC,
  L1,
  L2 : real;
  exist : boolean;


procedure LoesungBestimmen (  
	inA,
	inB,
	inC : real;
 var outLoesung1 : real;
 var outLoesung2 : real;
 var outGibtLoesung : boolean); 
	
	var
    d : real; { Hilfsvariable }
	
	
	begin
	d := inB * inB - 4.0 * inA * inC;
	if (d < 0.0) or (inA = 0.0) then
{	 nicht loesbar oder Vorbedingung nicht erfuellt }
      outGibtLoesung := false
		else 
		begin
      exist := true;
      d := sqrt (d);
      L1 := -(inB - d) / (2.0 * inA);
      L2 := -(inb + d) / (2.0 * inA)
end
end; { LoesungBestimmen }


begin { LoesungSuchen }
writeln ('Loesungen einer quadratischen Gleichung'); writeln ('Geben Sie die Koeffizienten ein: '); write ('a: ');
readln (KoeffA);
write ('b: ');
readln (KoeffB);
write ('c: ');
readln (KoeffC);
LoesungBestimmen (KoeffA, KoeffB, KoeffC,
                    L1, L2, exist);
if exist then
writeln ('Loesungen: ', L1:2:2, ' und ', L2:2:2)
else
writeln ('KEINE Loesung!') 
end. { LoesungSuchen }
