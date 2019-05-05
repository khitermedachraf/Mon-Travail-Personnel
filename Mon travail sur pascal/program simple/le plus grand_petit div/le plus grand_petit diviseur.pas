program plus_grand_petit_div;


uses crt;
var n,pgd,ppd,i, cpt : longint ;

BEGIN
clrscr;
textcolor(yellow);
write(' S.V.P  entrer un entier  N : ' );
readln(n);
i:= 02 ;
pgd:= 0 ;
ppd:= 0 ;

repeat
  if ( n mod i = 0) then
    begin
       ppd := i;
       cpt := cpt + 1 ;
    end
  else   i:= i + 1 ;


until   ( cpt = 1);
pgd :=  n div ppd;
if ( ppd = n)  then
    writeln(   '  N n ''a pas de diviseurs ')
else
    if ( ppd <> pgd ) then
       begin
           writeln(  ' Le plus petit  diviseur est  :  ' , ppd);
           writeln(  ' Le plus grand  diviseur est  :  ' , pgd);
       end
    else   writeln(  ' N a un seul diviseur  :  ' , ppd  );

writeln;
writeln;
writeln('                      Tapez  <    Enter    >   Pour Quitter  ...');
readln;
END.

