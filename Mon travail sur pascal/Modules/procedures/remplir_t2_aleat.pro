procedure T2_aleat(x:integer;var t :tab2;var l,c:integer);
// Fournit un tableau … 2 dimensions rempli avec des nombres al‚atoires compris entre 0
et X
var i,j:integer;
BEGIN
write('Donnez le nombre de lignes : ');
readln(l);
write('Donnez le nombre de colonnes : ');
readln(c);
for i:= 1 to l do
for j:=1 to c do
t[i,j]:=random(x);
END;
