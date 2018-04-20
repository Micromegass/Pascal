
program Goods (input, output);

{Calculation of discount}

const
GRUNDPREIS = 200;

var 
Bestellung : integer;
Preis: real;


begin

	write('Please enter the number of ordered goods: ');
	readln(Bestellung);
	
	if Bestellung <= 0 then 
		write('an error occured')
	
	else 
	{order exists}
	
	begin 
	Preis := Bestellung*Grundpreis;
	
	if Bestellung > 10 {disount is granted} then
		write('total price is: ', trunc(Preis*0.09))
	else if Bestellung > 50 then
			write('total price is: ', trunc(Preis*0.09))
	
	end {finishes  begin}
end. {finishes program}
