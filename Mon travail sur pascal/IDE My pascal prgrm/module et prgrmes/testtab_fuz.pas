program test;
type tab1=array[1..100000]of longint;
var ta,tb:tab1;x,y:longint; var tc:tab1;var w:longint;
{$i c:\algo\lect1de.pro}
{$i c:\algo\ecrit1de.pro}

procedure tab_fuz(tai1: longint; t1:tab1;tai2:longint;t2:tab1;t3:tab1;tai3:longint);
(*donner un tableau triee a partir de 2 tableaux trie sans utiliser le trie*)
var z,k,i,j:longint;

begin
i:=1;
j:=1;
k:=1;
repeat
 if t1[i]<=t2[j] then
  begin
  t3[k]:=t1[i];
  i:=i+1;
  k:=k+1;
  end

  else
  begin
  t3[k]:=t2[j];
  j:=j+1;
  k:=k+1;
  end;
until (i=tai1) or (j=tai2) ;

if tai1 < tai2 then
begin
for i:=tai1+1 to tai2 do
 begin
 t3[k]:=t2[i];
 k:=k+1;
 end;
end

else
begin
 for j:=tai2+1 to tai1 do
 begin
 t3[k]:=t1[j];
 k:=k+1;
 end;
end;

end;

begin
lect1de(ta,x);
lect1de(tb,y);
tab_fuz(x,ta,y,tb,tc,w);
ecrit1de(tc,w);
readln;
end.

