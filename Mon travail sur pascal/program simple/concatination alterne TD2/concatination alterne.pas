program conctination_alternee;

uses crt;
var  a,b,x,y,p,c : longint ;


BEGIN
clrscr;
textcolor ( yellow);
write(' Please  enter the number A  : ');
readln (a);
write(' Please  enter the number B  : ');
readln(b);
p:= 1 ;

repeat
 x:= a mod 10 ;
 y:= b mod 10 ;
 c:= c +  ( y + 10 * x) * p ;
 p:= p *100 ;
 a:= a div 10 ;
 b:= b div 10 ;


until( c>10000000);
writeln;
writeln;
writeln ( ' The new number is  :',c);






writeln;
writeln;
writeln (  '                         Press <    Enter    >   To quit ' );
readln;
END.

