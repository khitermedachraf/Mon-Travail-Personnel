program decalage_gauche;

uses crt;
var n  ,nb, d , i , s , res : longint ;
{$i modules\decalage.fon}
{$i modules\NBPOS.fon}
BEGIN
clrscr ;
textcolor(yellow);
write('  Donner une nombre N  : ' );
readln(n) ;
write('  Donner le nombre de decalage  : ') ;
readln(d);
nb := NBPOS ( n ) ;
for i := 1 to d  do
begin
n:= decalage(n, nb);
end ;
writeln('   Le nombre  apres decalage  est   :  ',n);
readln;

END.

