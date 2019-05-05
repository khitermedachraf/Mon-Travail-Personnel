program test;
type tab1=array[1..10000]of longint;
var x,y:longint; var t:tab1; tai:longint;
{$i c:\algo\ecrit1de.pro}


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

begin
readln(x,y);
Meme_Fec(x,y,t,tai);
ecrit1de(t,tai);
readln
end.