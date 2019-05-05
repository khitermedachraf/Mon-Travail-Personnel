program huitieme_nombre;

uses crt;
var i , cpt , n  : longint ;

{$i modules/meme_chiffres.fon}

BEGIN
clrscr ;
cpt:= 0  ;
n:= 13 ;
i:= 1 ;
repeat
n:= 13 * i ;
if (meme_chiffres ( n ) = true ) then cpt := cpt + 1 ;
i:= i + 1 ;

until    (cpt = 8) ;
writeln(n);
readln ;

END.

