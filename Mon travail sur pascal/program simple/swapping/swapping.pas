program swaapping;

uses crt;
var n,a,b,p,nb,i,x  : integer;

BEGIN
clrscr;
write (  'Enter a number :  N =  ' );
readln  ( n );
x := n ;
a:= n mod 10 ;
nb := 0 ;
repeat
    n:= n div 10 ;
    nb := nb + 1;


until ( n= 0);
p:= 1 ;
    for i := 1 to (nb-1 ) do
        begin
             p:= p *10 ;
        end ;
b:= x div p ;
n:=  ((x - a + b ) -b*p +a*p)   ;
writeln ('The new number is  : ', n ,' ;) ' );


writeln;
writeln;
writeln('                 Press  <   Enter   > To Quite ') ;
readln;
END.

