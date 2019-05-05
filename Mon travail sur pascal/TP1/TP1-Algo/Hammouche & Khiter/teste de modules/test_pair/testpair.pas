program hj;
var n: longint;



function pair(x:longint):boolean;

var p:boolean;
begin
p:=false;

if x mod 2 =0 then p:=true;
pair:=p;
end;
begin
readln(n);
if pair(n) = true then
begin
writeln;
 writeln('true');
 end;
if pair(n) =false then
begin
writeln;
 writeln('false');
 end;
readln;





end.