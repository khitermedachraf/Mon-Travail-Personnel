program nb_elem_egaux_val;

uses crt;
var
    tab : array [1..100] of  longint ;
    tai , val : longint;

{$i ./nb_elem.fon }
{$i ./lect1d.proc}
BEGIN
clrscr ;
textcolor(yellow);
lect1d(tab,tai);
writeln('Donner la valeure recherchee  :' ) ;
readln(val);
writeln('Il ya  [',nb_elem(tab,tai,val),'] elements egaux a la valeure : ',val);
write('la variable globale '' tai ''  se change  car le passage est par valeure   tai = ',tai);
readln ;
END.

