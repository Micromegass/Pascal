program merge (input, output);
    { Reads two ordered lists of integers keyed in by the user, and merges 
them into a third ordered list, without checking their order. 
    if the input is not sorted, the result will be undefined.}

const
  FELDLAENGE1 = 5;
  FELDLAENGE2 = 8;
  ERGEBNISFELDLAENGE = 13; { FELDLAENGE1 + FELDLAENGE2}

type
  tFeld1 = array [1..FELDLAENGE1] of integer;
  tFeld2 = array [1..FELDLAENGE2] of integer;
  tErgebnisFeld = array [ 1..ERGEBNISFELDLAENGE] of integer;

var
  Feld1 : tFeld1;
  Feld2 : tFeld2;
  ErgebnisFeld : tErgebnisFeld;
  i : integer;
  j : integer;
  k : integer;
begin
  { read ordered lists (Felder) }
  writeln (' Please key in', FELDLAENGE1:2 );
  for i := 1 to FELDLAENGE1 do
      readln (Feld1[i]);
  writeln (' Please key in', FELDLAENGE2:2);
  for j := 1 to FELDLAENGE2 do
      readln (Feld2[j]);
  { Merge Feld1 and Feld2 into ErgebnisFeld}
  i :=1;
  j :=1;
  k := 1;

  while (i <= FELDLAENGE1) and (j <= FELDLAENGE2) do
        if Feld1[i] <= Feld2[j] then
           begin
           ErgebnisFeld[k] := Feld1[i];
           i := i+1;
           k := k+1
          end
        else
        begin
          ErgebnisFeld[k] := Feld2[j];
          j := j +1;
          k := k +1
        end;
  { add remaining values to ErgebnisFeld}
  if i > FELDLAENGE1 then
     repeat
           ErgebnisFeld[k] := Feld2[j];
           j := j + 1;
           k := k + 1
     until k = ERGEBNISFELDLAENGE+1
  else
      repeat
            ErgebnisFeld[k] := Feld1[i];
            i := i + 1;
            k := k + 1
      until k = ERGEBNISFELDLAENGE+1;


  writeln ('The merged list is: ');
  for k := 1 to ERGEBNISFELDLAENGE do
      write (ErgebnisFeld[k], ' ');
  writeln;
  readln;

end.
