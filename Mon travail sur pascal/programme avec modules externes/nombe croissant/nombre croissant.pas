program nombre_croissant;

uses crt;

var   n , j , occ, i ,res : longint ;
{$i modules\nb_occrnce.fon}




BEGIN
clrscr ;
textcolor(yellow);
write('  Donnez  un nombre N :  ') ;
readln(n);
res := 0 ;
for j := 1 to 9 do
   begin
     occ := nb_occrnce(n,j);
     for i := 1 to occ   do
       begin
          res := res * 10 + j ;
       end;
   end  ;
writeln( '    Le nombre ordonne est :  ', res );

writeln;
writeln;
writeln(  '                Tapez <    Entrer   > Pour Quitter  ... ');
readln;
END.

