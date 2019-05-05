function verif_ligne(l,c,v1,v2:longint;T:tableau):boolean;
var S,i,cpt,j:longint;
inter:boolean;
      begin
inter:=false; cpt:=0;
      S:=T[l,c];
      for j:=1 to v2 do
             begin
             if (T[l,j]=S) then
             begin
             cpt:=cpt+1;
             end;
      end;
if (cpt >=2) then
      begin
      inter:=true;
      end;
verif_ligne:=inter;
end;