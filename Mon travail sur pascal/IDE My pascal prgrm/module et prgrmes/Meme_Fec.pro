


procedure Meme_Fec(n,fec:longint; var Mf:tab1 ; var taille:longint);
var i,t:longint; s:tab1;
{$i c:\algo\fecond.pro}
begin
taille:=0;
for i:=1 to n do
 begin
 fecond(i,s,t);
 if t=fec then
   begin
   taille:=taille+1;
   Mf[taille]:=i;
   end;
  end;
end;
