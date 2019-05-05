program multiplication_miroire;

uses crt ;

var  a1 , a2 ,b1 ,b2 , c : longint ;

{$i modules\miroire.fon}
{$i modules\diff.fon}
BEGIN
clrscr ;
textcolor(yellow);
write ('Demarrer  le programme  (1/0) ?  : ');
readln( c);
writeln(' Les resultats sont  : ');
if ( c = 1 ) then
begin

   for a1 := 123 to 987 do
   begin
      for b1 := 12 to 98 do
         begin
            if (diff (a1 ,b1) = true ) then
               begin

                  a2 := miroire (a1);
                  b2 := miroire ( b1);

               end;
            if ( a1 * b1 = a2 * b2 ) then writeln( a1 ,' * ',  b1  ,' = ', a2 ,' * ',b2) ;
         end ;
   end;


end;
writeln;
writeln;
writeln('Tapez  <    Entrer Pour  Quitter   >  ... ');
readln ;
END.

