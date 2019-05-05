program test;
var x,p : longint;

function puiss (a,n:longint):longint;
var i,res : longint;
begin
res:=1;
for i:=1 to n do res:=res*a;
puiss:=res;
end;

BEGIN
readln (x,p);
writeln (puiss(x,p));
readln;
END.