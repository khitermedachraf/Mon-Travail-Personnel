program n_position;

uses crt;
var
 n , c , npos : longint ;

procedure quit;

 begin
  writeln ;
  writeln ;
  writeln ( ' Tapez sur <  Enter  > To quit ');
  readln;
 end;

BEGIN
clrscr ;
textcolor(green);
write(' Donner un nombre  N  : ');
readln(n) ;


c := 0 ;
if n = 0 then
  npos := 1
else
 begin
   repeat
      n :=n div 10 ;
      c:= c +1 ;

   until  abs(n ) < 1 ;
          npos := c ;
 end ;

 writeln( ' Le nombre de position est  : ' , npos ) ;

quit;
END.

