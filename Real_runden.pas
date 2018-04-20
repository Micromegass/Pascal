


program EURBetrag (input, output);

{eurobetrag audgeben}

const 
WAEHRUNG = 'EUR';

var 
Betrag : real;


begin 

write('Bitte ', WAEHRUNG);
write(' eingeben ' );
readln(Betrag);

if Betrag >= 0 then

write(Betrag:3:2, Waehrung)

else 

begin
    write ('Eingabefehler! Betrag ', Betrag);
    write (' ist negativ.')
end

end. 


