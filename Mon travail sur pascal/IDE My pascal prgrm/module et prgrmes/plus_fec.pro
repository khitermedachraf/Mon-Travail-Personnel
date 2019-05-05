
procedure plus_fec( n:longint; var NpF:tab1 ; var taille,fec:longint);
(*donne la table NpF qui va contenir les nombre <= n ; ayant la plus grande fecondite fec.taille represnte leurs nombre*)

var i,k:longint; s:tab1;
{$i c:\algo\fecond.pro}
begin
fec:=1;
for i:=1 to n do
 begin
 fecond(i,s,k);
 if k > fec then fec:=k;
 end;
taille:=0;
for i:=1 to n do
 begin
 fecond(i,s,k);
 if k= fec then
 begin
 taille:=taille+1;
 NpF[taille]:=i;
 end;
end;
end;