program nombre_pair_impair;

uses crt;
var   n,n1,n2,x,p1,p2 : longint ;

BEGIN
clrscr;
textcolor(yellow);
write( '   Please  enter a number  : ' );
readln(n);
x:= 0 ;
p1:= 1 ;
p2:= 1 ;
n1 := 0 ;
n2 := 0 ;
if ( (n >= 0) and ( n < 10) ) then
   if (n mod 2 =0 ) then
       begin
         writeln('  There is only one pair number  : ', n );
       end
   else           writeln('  There is only one impair number  : ', n )
else
 begin
   repeat
   x := n mod 10 ;
   n := n div 10 ;
     if ( x mod 2 =0) then
        begin
          n1 := n1 + x * p1 ;
          p1 := p1 * 10 ;
        end
     else
        begin
          n2 := n2 + x * p2 ;
          p2 := p2 * 10  ;
        end ;

    until ( n = 0 ) ;

    writeln( '  The pair number  is  : ' , n1) ;
    writeln ('  The impair number is : ' , n2) ;

end ;


writeln;
writeln;
write( '         Press <   Enter   > To Quit  ... ' );
readln;
END.

