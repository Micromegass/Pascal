


program Triangles  (input, output); 

{determining characteristics of triangle}


var 
a,
b,
c : integer;
Flaeche,
s : real;



begin 

{read and print the sides of the triangle in ascending order} 

writeln('Please insert 3 numbers in ascending order');

readln(a);
readln(b);
readln(c);
writeln(a:3, b:3, c:3);


if (b<a) OR (c<b) then
writeln('Error. This is not an ascending order')
else 
	if (a+b) <= c then
		writeln('triangle cannot be formed ')
	else
	
	begin
		 if a = c then 
		writeln('triangle is equilateral')
	
		else 
			if (a = b) or (b = c) then 
			writeln('triangle is isosceles')
	
		else 
		writeln('triangle is inequilateral');
		
		s := 0.5*(a+b+c);
		Flaeche := sqrt (s*(s-a) * (s-b) * (s-c));
		
		writeln('area of triangle is ', Flaeche:8:2)
	end 
	
end. {ending program}


end.
