program convertion_decimal_vers_binaire;

uses crt;
var  n : integer;
{$i "\Mon travail sur pascal\Modules\fonctions\DECBIN.fon"}

BEGIN
clrscr;
textbackground(white);
textcolor(green);
clrscr;
gotoxy(10,8);
write(' Tapez un nombre entier (n) :  ' );
readln(n);
gotoxy(13, 11);
write(' le nombre binaire est egale a : ', DECBIN(n));
gotoxy ( 8 , 15);
write ( ' Tapez entrer pour quitter ' );


readln;
END.

