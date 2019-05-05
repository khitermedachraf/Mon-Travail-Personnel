program test_indice;

uses crt;
var
    tab : array [1..100] of  longint ;
    tai , b1 : longint;


{$i ./modules/lect1d.proc}
{$i ./modules/indice_petit(elem-tab).fon}
BEGIN
clrscr ;
textcolor(yellow);
lect1d(tab,tai);
b1 := 1 ; 
writeln('hhhhhhh');
writeln(indice_petit(tab,b1,tai));


readln ;
END.
