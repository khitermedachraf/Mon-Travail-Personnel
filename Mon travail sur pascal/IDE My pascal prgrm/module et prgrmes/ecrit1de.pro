

procedure ecrit1de(t1:tab1;tai:longint);
var i:longint;

begin
for i:=1 to tai do
 begin
 writeln('t[',i,']:=',t1[i]);
 end;
end;


