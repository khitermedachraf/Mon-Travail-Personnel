program factoriel;

uses crt;
var
  f , i  , x , facto : longint ;

BEGIN
f := 1 ;
clrscr;
textcolor(green);
write(' de 1 jusqu''a  12   . ') ;
writeln ;
writeln ;
write('  Donner un nombre  n  :  ') ;
readln (x);
 for i := 2 to x do
   begin
     f := f * i ;
   end;
facto := f ;
writeln ;

writeln (' La factorielle de n est  : ' , facto ) ;
 writeln ;
writeln ;
write ( '           Press <   Enter   >  to quit  !' ) ;
readln ;
END.

