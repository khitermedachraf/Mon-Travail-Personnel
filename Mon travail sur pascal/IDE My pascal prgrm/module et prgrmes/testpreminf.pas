program test;

var x:longint;


function PREMINF(n:longint):longint;
(*donne le nombre prmier le plus proche inferieurement de n*)
{$i c:\algo\prem.fon}
begin
while prem(n)<> true do n:=n-1;//on decremente n et on s'arrete au premier nb premier trouve *)
preminf:=n;
end;

begin

readln(x);
writeln(preminf(x));
readln;
end.
