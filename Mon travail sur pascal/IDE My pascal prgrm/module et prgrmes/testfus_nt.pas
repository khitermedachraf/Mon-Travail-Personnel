program test;
type tab1=array[1..10000]of longint;
var t,x:tab1;tai,taix:longint;
{$i c:\algo\lect1de.pro}
{$i c:\algo\ecrit1de.pro}
{$i c:\algo\fus_2t.pro}



procedure fus_nt(r:tab1;tair:longint);
(*fusion de tableaux*)

begin
rep='o';
writeln('donner le t1');
lect1de(t1,tai1);
i=2;
repeat
if rep='0' then
 writeln('donner le tableau' ,i);
 lect1de(t2,tai2);
  r:=fus_2t(t1,t2,t3,tai1,tai2,tai3);
  t1:=r;
  i:=i+1;
  readln(rep);
end;

begin
lect1de(t,tai);
ecrit1de(x,taix);
readln;
end.

