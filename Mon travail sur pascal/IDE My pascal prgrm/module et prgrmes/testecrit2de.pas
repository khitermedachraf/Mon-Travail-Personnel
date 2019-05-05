program test;
type tab2=array[1..100,1..100]of longint;
var t:tab2; lign,coln:longint;
{$i c:\algo\lect2de.pro}
procedure ecrit2de(t2:tab2;lig,col:longint);

var i,j:longint;
begin
 for i:=1 to lig do
  for j:=1 to col do
   begin
   writeln('t[',i,',',j,']:=', t2[i,j] );
   end;
   end;

begin
writeln('donner lign,coln:  ');
readln(lign,coln);
lect2de(t,lign,coln);
ecrit2de(t,lign,coln);
readln;
end.
