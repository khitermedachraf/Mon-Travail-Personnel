program addition_binaire;

uses crt;

var n1,n11,n111,n2,n22,n222,nbp1,nbp2,p,p2,x,res_dec , res_bin  : longint ;

BEGIN
clrscr ;
textcolor (yellow);
write (  '  Please enter  the first number  : ' );
readln(n1);
write (  '  Please enter  the second number  : ' );
readln(n2);
nbp1 := 0 ;
nbp2 := 0 ;
n11 := n1 ;
n22 := n2 ;
p := 1 ;
p2 := 1 ;
res_bin := 0 ;
repeat
   nbp1:= nbp1 + 1 ;
   n11 := n11 div 10 ;
until (n11=0)   ;


repeat
    nbp2:= nbp2 + 1 ;
    n22 := n22 div 10 ;
until (n22 = 0);

repeat
   x := n1 mod 10 ;
   n111 := n111 + x * p ;
   p := p * 2;
   n1 := n1 div 10 ;
until ( n1 = 0);
p:= 1 ;
repeat
   x := n2 mod 10 ;
   n222 := n222 + x * p ;
   p := p * 2;
   n2 := n2 div 10 ;
until ( n2 = 0);
res_dec :=  n111 + n222 ;
p := 1 ;
repeat
   res_bin := ( res_dec mod 2 * p )+ res_bin ;
   res_dec := res_dec div 2 ;
   p:= p * 10 ;


until   ( res_dec = 0 );


writeln(  '      The some is :' ,res_bin );

writeln;
writeln;
write (  '                    Press  <    Enter    >  To Quit   ...');
readln;
END.

