program test;
var x:longint;
type tab1=array[1..10000]of longint;
var n:longint;t:tab1;
{$i c:\algo\lect1de.pro}

function nbsuit(t1:tab1;tai:longint):longint;
var ns,nelm,i:longint;

begin
ns:=0;
nelm:=1;
for i:=1 to tai-1 do
 begin
 if t1[i]<t1[i+1] then nelm:=nelm+1
 else
  begin
  if nelm >=2 then
   begin
   ns:=ns+1;
   nelm:=1;
   end;
  end;
 end;
if nelm>=2 then ns:=ns+1;
nbsuit:=ns;
end;

begin
lect1de(t,n);
writeln(nbsuit(t,n));
readln;
end.
