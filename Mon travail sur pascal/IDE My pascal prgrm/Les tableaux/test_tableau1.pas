program Untitled;
const max=100;
type Tab2=array[1..max,1..max]of longint;
var T:Tab2;
    m,i,j,n:longint;
begin
write( ' Donnez la valeure de  m , n  :   ')  ;
readln(m,n);

for i:=1 to m do
begin
for j:=1 to n do
begin
write(  ' Donnez la valeure de  T[ ',i,' , ', j,']  :') ;
readln(T[i,j]);
end;
end;
for i:=1 to m do
begin
for j:=1 to n do
begin
write(T[i,j],' | ');
end;
writeln ;
end;
readln ;
 end.