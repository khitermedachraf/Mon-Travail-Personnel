program conv_b1_b2;

uses crt;
var n1 , n2 , b1 , b2  , res : longint ;
{$i modules/conv_b1_10.fon }
{$i modules/conv_10_b2.fon }


BEGIN
clrscr ;
textcolor (yellow );
write ( ' Entrez un nombre  N : ' ) ;
readln(n1);
write( ' Donnez la base  B1 : ' );
readln(b1);
write( ' Donnez la base  B1 : ' );
readln(b2);
n2 := conv_b1_10( n1 ,b1) ;
res := conv_10_b2 (n2 ,b2);
writeln ( '  Le resultat  et  : ',res);
writeln ;
writeln;
writeln (   '                    Tapez <    Entrer   >  To Quit   ... ' ) ;
readln ;
END.

