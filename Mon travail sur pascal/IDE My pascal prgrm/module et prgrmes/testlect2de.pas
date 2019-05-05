program test;
type tab2= array[1..100,1..100]of longint;
var t:tab2;y,x:longint;


procedure lect2de(var t2:tab2;var i,j:longint);
var g,c:longint;
begin
for g:=1 to i do
begin
for c:=1 to j do
begin
writeln('t2[',g,',',c,']=');
readln(t2[g,c]);
end;
end;
end;

begin
readln(x,y);
lect2de(t,x,y);
readln;
end.


