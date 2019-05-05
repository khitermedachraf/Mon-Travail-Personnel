program test;
var x:longint;

function pair(n:longint):boolean;
BEGIN
pair:=false;
if n mod 2=0 then pair:=true;
END;

begin
readln(x);
writeln(pair(x));
readln;
end.