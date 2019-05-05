program tp1;
uses crt;
type tab1=array[1..20000]of longint;
var i,nbet,an,ind:longint;tr,tp:tab1;
{$i c:\algo\rand_mil.fon}
{$i c:\algo\pliage.fon}
{$i c:\algo\e_ident.fon}
{$i c:\algo\tribulles.pro}
begin
clrscr;
write('donnez l''annee : ');
readln(an);
write('donnez le nombre d''etudiants : ');
readln(nbet);
writeln;
i:=0;
for ind:=an*100000 + 1 to an*100000 + nbet do
  begin
  i:=i+1;
  tr[i]:=rand_mil(ind,5);
  tp[i]:=pliage(ind,5,nbet);
  end;
tribulles(tr,nbet);
tribulles(tp,nbet);
writeln('formule 1(fonction standard random de pascal) :');
writeln('***********************************************');
writeln(' plage des adresses:petite= ' ,tr[1], 'grande= ' ,tr[nbet], 'ecart = ',tr[nbet]-tr[1]);
writeln(' nombre de collisions:',e_ident(tr,nbet));
writeln;
writeln('formule 2(transformation par pliage ) :');
writeln('***************************************');
writeln(' plage des adresses:petite= ' ,tp[1], 'grande= ' ,tp[nbet], ' ecart= ',tp[nbet]-tp[1]);
writeln(' nombre de collisions :' ,e_ident(tp,nbet));
readln;
end.
