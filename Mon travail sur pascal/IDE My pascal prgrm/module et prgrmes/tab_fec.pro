procedure tab_fec(n:longint; var t:tab2 ; var lig,col:longint);
var i,j,x,tai:longint; s:tab1;
{$i c:\algo\fecond.pro}
{$i c:\algo\plus_fec.pro}

begin
col:=1;
for x:=1 to n do
  begin
  j:=1;
  fecond(x,s,i);
  while t[i,j] <> 0 do j:=j+1;
   if j > col then
   col:=j;
   t[i,j]:=x;
   end;
plus_fec(n,s,tai,lig);
end;
