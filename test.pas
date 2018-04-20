

program exEnumeration;

type
beverage = string;

var
drink:beverage;

begin
   writeln('Which drink do you want?');
   readln(drink); 
   
   writeln('You can drink ', drink);
end.


