program region ;
uses crt;
TYPE tableau=array[1..10,1..10]of longint;
var  T:tableau;
v1,v2,i,j:longint;
procedure lect_2D(var T:tableau;var v1:longint;var v2 :longint);
var i,j:longint;
       begin
writeln('donnez le nombre de ligne de votre tableau');
read(v1);
writeln('donnez le nombre de colonnes de votre tableau');
read(v2);
randomize;
       for i:=1 to v1 do
       begin
          for j:=1 to v2 do
          begin
          T[i,j]:=random(8)+1;
          end;
       end;
       writeln('Voici la matrice remplie!!!!');
       writeln('--------------------------------------');
       for i:=1 to v1 do
       begin
          for j:=1 to v2 do
          begin
          write(' | ',T[i,j]);
          end;
          writeln;
       end;
end;
function verif_reg(l,c:longint;T:tableau):boolean;
var S,i,cpt,j,a,b:longint;
inter:boolean;
      begin
S:=T[l,c];
inter:=false; cpt:=0;
if (l>=1) and (l<=3) then
i:=3;
if (l>=4) and (l<=6)then
i:=6;
if (l>=7) and (l<=9) then
i:=9;
if (c>=1) and (c<=3) then
j:=3;
if (c>=4) and (c<=6)then
j:=6;
if (c>=7) and (c<=9) then
j:=9;
  for a:=(i-2) to i do
    begin
    for b:=(j-2) to j do
    begin
             if (T[a,b]=S) then
             begin
             cpt:=cpt+1;
             end;
      end;
      end;
if (cpt >=2) then
      begin
      inter:=true;
      end;
verif_reg:=inter;
end;
begin
Lect_2D(T,v1,v2);
writeln('Voici la matrice apres detection des erreurs!!!!');
       writeln('--------------------------------------');
for i:=1 to v1 do
begin
  for j:=1 to v2 do
  begin
    if verif_reg(i,j,T)=true then
    begin
    textcolor(red);
    write(' | ',T[i,j]);
    end
    else
    begin
    textcolor(white);
    write(' | ',T[i,j]);
    end;
    end;
    writeln;
    end;
    readln;
    end.
