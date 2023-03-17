program Enunciado1;

{Desarrolle un programa en Pascal que permita al usuario ingresar una frase y a su vez tenga las opciones de convertir 
*  frase ingresada en números Binarios, Hexadecimal, Octal y Romano. Después de convertir la frase a cualquiera 
* de las opciones propuestas, el programa debe tener una opción para seguir haciendo conversiones. Tener en cuenta 
* que el programa también debe mostrar la opción de salir o de convertir otra frase.}

{Realizado por Luis Rodriguez C.I 29.732.845}

uses crt;
var
choice:string;
opcion:integer;


Procedure BINARIO;

var
  oracion,binario:string;
  letra:char;
  x, z,CODIGOASCCI:integer;
  
begin {inicio del procedure binario}
clrscr;
writeln('|-----------------------------------------------------|');
writeln('|Ingresa una oracion que quieras transformar a binario|');
writeln('|-----------------------------------------------------|');
write('---> '); readln(oracion);

  for x := 1 to length(oracion) do 
  begin
    letra := oracion[x];
    CODIGOASCCI := ord(letra);
    binario := '';
    
    while CODIGOASCCI > 0 do 
    begin
    if (CODIGOASCCI mod 2) = 0 then
    binario := '0' + binario
    else
    binario := '1' + binario;
    CODIGOASCCI := CODIGOASCCI div 2;
    end;
    
    for z := 1 to (8 - length(binario)) do
      write('0');
    
    write(binario, ' ');
    
end;

end; {End del procedure binario} 

procedure HEXADECIMAL;
var
  frasehexadecimal,hexadecimal:string;
  letra:char;
  asciihexadecimal,x,z:integer;
 

begin {inicio del procedure hexadecimal}
clrscr;
writeln('|---------------------------------------------------------|');
writeln('|Ingresa una oracion que quieras transformar a hexadecimal|');
writeln('|---------------------------------------------------------|');
write('---> '); readln(frasehexadecimal);

  for x := 1 to length(frasehexadecimal) do 
    begin
    letra := frasehexadecimal[x];
    asciihexadecimal := ord(letra);
    hexadecimal := '';
    
    while asciihexadecimal > 0 do begin
    if (asciihexadecimal mod 16) < 10 then
    hexadecimal := chr((asciihexadecimal mod 16) + 48) + hexadecimal
    else
    hexadecimal := chr((asciihexadecimal mod 16) + 55) + hexadecimal;
      
    asciihexadecimal := asciihexadecimal div 16;
    end;
    
    for z := 1 to (2 - length(hexadecimal)) do
    write('0');
    
    write(hexadecimal, ' ');
end;

end; {End del procedure hexadecimal} 

procedure OCTAL;
var
fraseoctal,octal:string;
letra:char;
asciioctal,x,z:integer;



begin {inicio del procedure octal}
clrscr;
writeln('|---------------------------------------------------|');
writeln('|Ingresa una oracion que quieras transformar a octal|');
writeln('|---------------------------------------------------|');
write('---> '); readln(fraseoctal);

  for x := 1 to length(fraseoctal) do 
    begin
    letra := fraseoctal[x];
    asciioctal := ord(letra);
    octal := '';
    
    while asciioctal > 0 do 
    begin
    octal := chr((asciioctal mod 8) + 48) + octal;
    asciioctal := asciioctal div 8;
    end;
    
    for z := 1 to (3 - length(octal)) do
      write('0');
    write(octal, ' ');
end;
end; {End del procedure octal}

procedure ROMANO; 
var
  fraseromana,romano:string;
  letra: char;
  asciiromano,x: integer;
  

begin { Inicio del procedure romano}
clrscr;
writeln('|----------------------------------------------------|');
writeln('|Ingresa una oracion que quieras transformar a romano|');
writeln('|----------------------------------------------------|');
write('---> '); readln(fraseromana);

  for x := 1 to length(fraseromana) do begin
    letra := fraseromana[x];
    asciiromano := ord(letra);
    romano := '';
    
    while asciiromano >= 1000 do begin
      romano := romano + 'M';
      asciiromano := asciiromano - 1000;
    end;
    
    if asciiromano >= 900 then begin
      romano := romano + 'CM';
      asciiromano := asciiromano - 900;
    end
    else if asciiromano >= 500 then begin
      romano := romano + 'D';
      asciiromano := asciiromano - 500;
    end;
    
    while asciiromano >= 100 do begin
      romano := romano + 'C';
      asciiromano := asciiromano - 100;
    end;
    
    if asciiromano >= 90 then begin
      romano := romano + 'XC';
      asciiromano := asciiromano - 90;
    end
    else if asciiromano >= 50 then begin
      romano := romano + 'L';
      asciiromano := asciiromano - 50;
    end;
    
    while asciiromano >= 10 do begin
      romano := romano + 'X';
      asciiromano := asciiromano - 10;
    end;
    
    if asciiromano >= 9 then begin
      romano := romano + 'IX';
      asciiromano := asciiromano - 9;
    end
    else if asciiromano >= 5 then begin
      romano := romano + 'V';
      asciiromano := asciiromano - 5;
    end;
    
    while asciiromano >= 1 do begin
      romano := romano + 'I';
      asciiromano := asciiromano - 1;
    end;
    
    write(romano, ' ');
end;

end; { end del procedure romano}


 
 
 
 
 
 begin {inicio del programa}
 repeat
 clrscr;
 writeln('|--------------------|');
 writeln('|Que deseas emplear? |');
 writeln('|--------------------|');
 writeln('|(1) Para BINARIO    |');
 writeln('|(2) Para HEXADECIMAL|');
 writeln('|(3) Para OCTAL      |');
 writeln('|(4) Para ROMANO     |');
 writeln('|--------------------|');
 write('---> '); readln(opcion);
 while (opcion <> 1) and (opcion <> 2) and 
 (opcion <> 3) and (opcion <> 4) do
begin
writeln('|------------------------------------------------|');
writeln('|Por favor ingrese una de las opcions en pantalla|');
writeln('|------------------------------------------------|');
write('---> '); readln(opcion);
end;

if opcion = 1 then BINARIO;
if opcion = 2 then HEXADECIMAL;
if opcion = 3 then OCTAL;
if opcion = 4 then ROMANO;

    writeln;
    textcolor(White); 
	writeln('|---------------------------------|');
	Writeln('|Deseas volver a intentarlo? (S/N)|'); 
	writeln('|---------------------------------|');
	textcolor(White);
	write('---> '); Readln(choice);
	until (choice = 'n') or (choice = 'N');
	
	writeln;
	writeln('Hasta la proxima!! Creado por: Luis Rodriguez');
	writeln;                           
end. {final}
