procedure aleat2d(l,c,n:longint;var t:grille);
var i,j:longint;
begin
        for i:=1 to l do
        begin
                for j:=1 to c do
                begin
                        randomize;//assurer la variation des nombres g‚n‚r‚s//
                        t[i,j]:=random(n);
                end;
        end;
end;