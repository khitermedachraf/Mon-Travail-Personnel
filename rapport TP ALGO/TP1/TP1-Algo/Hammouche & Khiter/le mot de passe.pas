program mot_de_passe;

uses crt;
var  cpt , i , n8 ,e23 , e25 , res_final : longint ;

{$i modules\pair.fon }

{$i modules\CONCAT.fon}

{$i modules\meme_chiffres.fon}

{$i modules\NBPOS.fon}

{$i modules\PUISS.fon}

{$i modules\syracus1.fon}

{$i modules\syracus2.fon}

BEGIN
clrscr ;
textcolor(yellow) ;
writeln ;
writeln;
writeln( '     Le mot de passe  est  :');
cpt:= 0  ;
n8:= 13 ;
i:= 1 ;
repeat
n8:= 13 * i ;
if (meme_chiffres ( n8  ) = true ) then cpt := cpt + 1 ;
i:= i + 1 ;

until    (cpt = 8) ;
e23 := syracus1(1313)   ;
e25 := syracus2(1313)  ;
res_final:= CONCAT(CONCAT(n8,e23),e25) ;
writeln('                                            ',res_final) ;
readln ;




END.

