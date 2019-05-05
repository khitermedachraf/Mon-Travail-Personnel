procedure esth_grille(g:grille;m:tab2d;l:longint);
uses crt;
var i,j,d:longint;
begin
        for i:=1 to l do
        begin
                for j:=1 to 9 do
                begin
                        for d:=1 to 9 do
                        begin
                                if (m[i,1]=j)and(m[i,2]=d) then
                                begin
                                        textcolor(132);//couleur rouge en clignautant//
                                        write(g[m[i,1],m[i,2]);
                                        textcolor(15);//couleur blanche//
                                        write(' | ');
                                end
                                else
                                        write(g[j,d],' | ');
                        end;
                end;
        end;
end;


