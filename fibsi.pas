
program Fibs (input, output); 

 function Fib (inZahl:integer):integer;

 begin 
  
  if inZahl = 0 then 
  Fib := 0
  else
  
  if inZahl = 1 then 
   Fib := 1
  
  else  
     Fib := Fib(inZahl-1) + Fib(inZahl-2);

 end;{procedure}
  
  
 begin
 
 writeln(Fib(14))
 
 end.
 

