program test;
var  x:longint;

function chif_ord(n:longint):boolean;
(* affiche true si les chiffres qui composent n sont de ordre croissant ou pas*)
var aig:boolean; i:longint;
{$i c:\algo\nb_pos.fon}
{$i c:\algo\extrch.fon}

begin
aig:=true;
i:=1;
repeat
if extrch(n,i)<extrch(n,i+1) then i:=i+1
else aig:=false;
until (aig=false) or (i>= nb_pos(n));
chif_ord:=aig;
end;

begin
readln(x);
writeln(chif_ord(x));
readln;
end.
