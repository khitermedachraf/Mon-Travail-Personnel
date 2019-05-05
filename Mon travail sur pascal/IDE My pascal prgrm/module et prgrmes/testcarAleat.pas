program test;

var tail:longint;

function carAleat(N:longint):string;
var k:longint;cle,cle1:string;
begin
cle:='';
cle1:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
 for k:=1 to N do
 begin
 cle:=cle+cle1[Random(N)];
 end;
carAleat:=cle;
end;

begin
readln(tail);
writeln(carAleat(tail));
readln;
end.
