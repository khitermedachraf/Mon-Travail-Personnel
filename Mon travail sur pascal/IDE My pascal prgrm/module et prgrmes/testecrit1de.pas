program test;
type tab1=array[1..1000000]of longint;
var n:longint;t:tab1;
{$i c:\algo\lect1de.pro}

procedure ecrit1de(t1:tab1;tai:longint);
var i:longint;

begin
for i:=1 to tai do
 begin
 writeln('t[',i,']:=',t1[i]);
 end;
end;

begin
writeln('donnez n,t: ');
lect1de(t,n);
ecrit1de(t,n);
readln;
end.
