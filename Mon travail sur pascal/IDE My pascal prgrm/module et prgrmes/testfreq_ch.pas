program test;
var x,y:longint;

function freq_ch (n,ch:longint):longint;
var res,i:longint;
{$i c:\algo\nb_pos.fon}
begin
res:=0;
for i:=1 to nb_pos(n) do
begin
if n mod 10 =ch then res:=res+1 ;
begin
n:=n div 10;
end;
end;
freq_ch:=res;
end;

begin
readln(x,y);
writeln(freq_ch(x,y));
readln;
end.
