procedure lect_1D(var T:tableau;var v1:longint;var v2 :longint);
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
end;