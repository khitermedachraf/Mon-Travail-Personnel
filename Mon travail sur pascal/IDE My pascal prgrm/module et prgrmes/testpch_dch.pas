program test;
var x:longint;

function pch_dch (n:longint):boolean;
{$i c:\algo\ext_g.fon}
{$i c:\algo\ext_d.fon}
begin
if ext_d(n,1)=ext_g(n,1) then pch_dch:= true
else pch_dch:=false;
end;

begin
readln(x);
writeln (pch_dch(x));
readln;
end.