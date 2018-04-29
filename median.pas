

program median (input, ooutput); 


{determines the median of letters}


type
tletter = 'a'..'z';
tfield = array[tletter] of boolean;
tnumber = 0..maxint;


var 
exists :  tfield; 
character : char;

total,
i,
medianpos : tnumber;
letter : tletter;

begin 

writeln('please enter letters and end with other character: ');

for letter := 'a' to 'z' do
exists[letter] := false;
total := 0;
read(character);


{read letters and set mark}

while (character >= 'a') and (character <= 'z') do 
begin 
	if not exists[character] then 
		begin 
		exists[character] := true;
		total := total + 1 ;
		end; 
	read(character)
	end;
	writeln;
	
	{write all letters and marks}
	
	for letter := 'a' to 'z' do
	write(letter);
	writeln;
	
	
	for letter := 'a' to 'z' do
	if exists[letter]then 
	write ('*')
	else write (' ');
	
	writeln;
	
	
	{look for median}
	
	medianpos := (total +1) div 2;
	letter := 'a';
	i := 0;
	
	repeat 
		if exists[letter] then
		i := i+1;
		letter := succ (letter)
		until i = medianpos;
		writeln('median is: ', pred(letter), '.')
		

	
	
	

end. 
