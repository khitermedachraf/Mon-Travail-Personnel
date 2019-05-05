program test;
var x,y:longint;

procedure permut (var a,b:longint);
var sauve:longint;
begin
sauve:=a;
a:=b;
b:=sauve;
end;

begin
readln(x,y);
permut(x,y);
writeln(x,y);
readln;
end.