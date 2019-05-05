program swapping;
var i,x,p,a,b,c,r,n,d :longint;
begin
readln(n);
p:=0;
x:=1;
d:=n;
repeat;
p:=p+1;
n:=n div 10;
until n= 0 ;
for i:=1 to p-1 do x:=x*10;
a:=d div x;
b:=d mod x div 10;
c:=d mod x mod 10;
r:=c*x+b*10+a;
writeln(r);
readln;
end.