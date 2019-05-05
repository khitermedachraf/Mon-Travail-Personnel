program test;
var x:longint;

function abondant(n:longint):boolean;
{$i c:\algo\somdiv.fon}
begin
if somdiv(n)>n then abondant:=true
else abondant:=false;
end;

begin
readln(x);
writeln(abondant(x));
readln;
end.