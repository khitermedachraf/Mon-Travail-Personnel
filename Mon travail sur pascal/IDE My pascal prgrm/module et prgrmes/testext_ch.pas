program test;
var x,y:longint;

function ext_ch(n,p:longint):longint;
(*droite gauche_*)
var cpt,r:longint;

begin
cpt:=0;
repeat
r:=n mod 10;
n:=n div 10;
cpt:=cpt+1;
until cpt=p;
ext_ch:=r;
end;

begin
readln(x,y);
writeln(ext_ch(x,y));
readln;
end.
