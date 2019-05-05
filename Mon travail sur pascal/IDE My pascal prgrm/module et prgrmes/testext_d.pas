program test;
var y,z:longint;

function ext_d(n,x:longint):longint;
var j:longint;
{$i c:\algo\nb_pos.fon}
{$i c:\algo\puiss.fon}
BEGIN
j:=0;
if nb_pos(n)>x then j:=n mod puiss(10,x)
else j:=n;
ext_d:=j;
END;

BEGIN
readln(y,z);
writeln(ext_d(y,z));
readln;
END.