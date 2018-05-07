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
	a, b, c : real;
	Loesung1, Loesung2 : real;
	gibtLoesung : boolean); 
	
	var
    d : real; { Hilfsvariable }
	
	
	begin
	d := b * b - 4.0 * a * c;
	if (d < 0.0) or (a = 0.0) then
{	 nicht loesbar oder Vorbedingung nicht erfuellt }
      gibtLoesung := false
		else 
		begin
      exist := true;
      d := sqrt (d);
      L1 := -(b - d) / (2.0 * a);
      L2 := -(b + d) / (2.0 * a)
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
