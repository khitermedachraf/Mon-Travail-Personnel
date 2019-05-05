program test;
var x,y:longint;

function extrch(n,p:longint):longint;
(* extraire un chiffre p d'un nombre n gauche droite*)
var a:longint;
{$i c:\algo\puiss.fon}
{$i c:\algo\nb_pos.fon}
begin
if p<= nb_pos(n) then
extrch:=n div puiss (10,nb_pos(n)-p) mod 10
else extrch:=0;
end;

begin
readln(x,y);
writeln(extrch(x,y));
readln;
end.
