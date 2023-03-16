program Enunciado2;
{Crear un programa que permita imprimir un número ingresado por el usuario en un color específico 
* si cumple con alguno de los siguientes parámetros:}

{1. Es divisible entre 13, de serlo deberá imprimirse el número en color marrón.  }
{2. Es divisible entre 7, de serlo deberá imprimirse el número en color verde.}
{3. Es divisible entre 5, de serlo deberá imprimirse el número en color rojo.  }
{4. Es divisible entre 3, de serlo deberá imprimirse el número en color azul. }
{5. Es divisible entre 2, de serlo deberá imprimirse el número en color amarillo.}
{6. De no ser divisible en base de cualquiera de los casos expuestos deberá imprimir el texto en color blanco.}

{Realizado por Luis Rodriguez C.I 29.732.845}

uses crt;
var n:longint;
choice:string;

procedure AMARILLO;
begin
textcolor(Yellow);
writeln;
writeln('|--------------------------|');
writeln('|Numero divisible entre Dos|');
writeln('|--------------------------|');
writeln('Resultado: ',n,'/','2: ',n div 2);
textcolor(Yellow);
end;

procedure AZUL;
begin
textcolor(lightblue);
writeln;
writeln('|---------------------------|');
writeln('|Numero divisible entre Tres|');
writeln('|---------------------------|');
writeln('Resultado: ',n,'/','3: ',n div 3);
textcolor(lightblue);
end;

procedure ROJO;
begin
textcolor(red);
writeln;
writeln('|----------------------------|');
writeln('|Numero divisible entre Cinco|');
writeln('|----------------------------|');
writeln('Resultado: ',n,'/','5: ',n div 5);
textcolor(red);
end;

procedure VERDE;
begin
textcolor(Green);
writeln;
writeln('|----------------------------|');
writeln('|Numero divisible entre Siete|');
writeln('|----------------------------|');
writeln('Resultado: ',n,'/','7: ',n div 7);
textcolor(Green);
end;

procedure MARRON;
begin
textcolor(brown);
writeln;
writeln('|----------------------------|');
writeln('|Numero divisible entre Trece|');
writeln('|----------------------------|');
writeln('Resultado: ',n,'/','13: ',n div 13);
textcolor(brown);
end;

begin
repeat
	clrscr;
	textcolor(White);
	writeln('|-----------------------------------------------------------------|');
	writeln('|Ingrese un numero y te dire si es divisible entre 13, 7, 5, 3 o 2|');
	writeln('|-----------------------------------------------------------------|');
	textcolor(White);
	write('---> '); readln(n);
	
	if ((n mod 2 = 0)) then AMARILLO;
	
	if ((n mod 3 = 0)) then AZUL;
	
	if ((n mod 5 = 0)) then ROJO;
	
	if ((n mod 7 = 0)) then VERDE;
	
	if ((n mod 13 = 0)) then MARRON;
	
	
	if ((n mod 2 = 0)) then writeln
	
	else if ((n mod 3 = 0)) then writeln
	
	else if ((n mod 5 = 0)) then writeln
	
	else if ((n mod 7 = 0)) then writeln
	
	else if ((n mod 13 = 0)) then writeln
	
	else writeln('No es Divisible entre: 13, 7, 5, 3 o 2');
	 

	  
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
	
end.
