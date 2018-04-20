

program maximum;


function max(a,b:integer):integer;

begin

		if a > b then
		max:=a
		
		else 
		max:=b
		
end;
		

var
  a,b: Integer;

begin
  a:=5;
  b:=18;
  write(max(a,b))
  
end.

