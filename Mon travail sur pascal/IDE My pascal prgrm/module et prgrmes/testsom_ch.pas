program test;
var x:longint;

function som_ch(n:longint):longint;
(* calculer la somme des chiffres qui composent n *)
var r,i:longint;
{$i c:\algo\nb_pos.fon}
{$i c:\algo\extrch.fon}
begin
r:=0;
for i:= 1 to nb_pos (n) do
r:=r+ extrch(n,i);
som_ch:=r;
end;

begin
readln(x);
writeln(som_ch(x));
readln;
end.