program random ;
uses crt;
var

   x , i  : integer ;



begin
clrscr;
randomize;
for  x := 1 to  10000 do
  begin
    i := random (1000) ;
    write( i , '  ');
  end;
writeln;
writeln;
writeln(' Tapez   <  Entrer  >  pour quitter ');
readln;


END.

