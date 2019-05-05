program test;
var y,z:longint;

function ext_g(n,x:longint):longint;
{$i c:\algo\nb_pos.fon}
{$i c:\algo\puiss.fon}
BEGIN
ext_g:=n div puiss(10,nb_pos(n)-x);
END;

BEGIN
readln(y,z);
writeln(ext_g(y,z));
readln;
END.