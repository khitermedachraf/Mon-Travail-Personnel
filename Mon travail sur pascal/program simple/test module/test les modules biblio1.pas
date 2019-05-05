program test_modules;

uses  crt , biblio_1;
var
 n , p : integer ;

BEGIN
clrscr ;
textcolor(green);
write(' donner la valeure de  n  et  p  separee par un blonc  :  ');
readln(n,p);
writeln;
writeln;
writeln( ' La factorielle de  n est : ', facto(n )) ;
writeln(' Nombre d''arrangements :' ,arrange ( n ,p )) ;
writeln(' Nombre de combinaison : ' , comb( n ,p )) ;
readln;
END.

