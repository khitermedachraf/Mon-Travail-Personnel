program test;
var x:longint;

function supabond(n:longint):boolean;
var i:integer;txn,txi:real;res:boolean;
{$i c:\algo\abondant.fon}
{$i c:\algo\somdiv.fon}
begin
i:=1;
res:=true;
txn:= somdiv(n) / n;
repeat
txi:= somdiv(i) / i;
if txi > txn then res:=false;
i:=i+1;
until (i > n) or (res=false);
supabond:=res;
end;

begin
readln(x);
writeln(supabond(x));
readln;
end.