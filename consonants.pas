
program cons (input, output); 

type
tletter = 'a'..'z';
tappereance = array[tletter] of integer;


var 
appereance : tappereance;
character : char ;
quantity,
vowelquantity: integer;


begin 

for character := 'a' to 'z' do 
appereance[character] := 0;
quantity := 0;
read(character);

while character <> '.' do 

begin 
if (character >= 'a') and (character <= 'z') then
begin
appereance[character] := appereance[character] +1;
quantity := quantity +1 
end;
read(character)
end; 
writeln;

vowelquantity := appereance['a'] + appereance['e'] + appereance['i'] + appereance['o'] +appereance['u'];

writeln('there are ', vowelquantity, ' vowels in your sentence');

writeln('there are ', quantity-vowelquantity, ' consonants in your sentence');

 

end. 



