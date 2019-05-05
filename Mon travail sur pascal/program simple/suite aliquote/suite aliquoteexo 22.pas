program suite_aliquote ;

uses crt;
var n,nb,cpt,s : longint ;
    arret : boolean ;

function somme_div( n : longint): longint ;
  var s , i : longint ;
  BEGIN
     s := 1 ;
     for i := 2 to (n div 2) do
         if  ( n mod i = 0) then s := s + 1 ;
     somme_div := s ;
  END ;
BEGIN
clrscr ;
textcolor ( yellow) ;
writeln( ' Donner  un nombre entier N  :  ') ;
readln (n);
cpt := cpt + 1 ;
nb := n ;
arret := false ;
write( ' La suite aliquote  est  : ', n );
repeat
s :=somme_div(n);
cpt:= cpt + 1 ;
write(' , ', s );
if ( s= 1 ) or (s = n) or (s = nb) then arret := true;
n:= s ;

until(arret = true);
if(s = n) then
begin
  write ('  Le nombre ', nb,' est  sociable d''ordre ',cpt);
end ;
if( cpt = 1) and ( s = 1 ) then  write ('  Le nombre ', nb,' est  premier')
else
   begin
       if ( cpt = 1 )then  write ('  Le nombre ', nb,' est  parfait ')
       else
          begin
            if (cpt = 2) then   write ('  Le nombre ', nb,' est  amical ')
            else  write ('  Le nombre ', nb,' est  sociable d''ordre ',cpt);

          end ;
   end;




writeln;
writeln;
writeln ( '               Tapez  <      Entrer    >  Pour Quitter   ');
readln;
END.

