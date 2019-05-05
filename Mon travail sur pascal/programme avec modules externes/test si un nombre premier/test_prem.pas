program test_prem;

uses crt;
var n : longint ;
{$i ./prem.fon}

BEGIN
clrscr ;
textcolor(yellow);
writeln('Donner  n : ');
readln(n) ;
if (NbPrem(n)) then  writeln( n ) ;



readln;
END.

