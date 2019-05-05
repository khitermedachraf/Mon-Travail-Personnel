
procedure ecrit2de(t2:tab2;lig,col:longint);

var i,j:longint;
begin
 for i:=1 to lig do
  for j:=1 to col do
   begin
   writeln('t[',i,',',j,']:=', t2[i,j] );
   end;
   end;


