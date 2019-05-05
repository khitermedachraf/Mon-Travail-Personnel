program nombre_parfait;

uses crt;
var
  N : integer;
  Np: integer;
  c : integer;
  d : integer;


BEGIN
clrscr;
writeln;
writeln;
write ( '   Entrez une limite   N :  ');
readln(N);

  for Np := 1 to N do

    begin
    c:= 0;
       for d:= 1 to  Np div 2  do
         begin
          if Np mod d = 0 then   c:= c + d ;
          end;
          if c = Np  then
          writeln ( Np , ' est un nombre parfait. ');


    end;
writeln;
writeln;
writeln (' press < Enter > To Quit ');
readln;
END.

