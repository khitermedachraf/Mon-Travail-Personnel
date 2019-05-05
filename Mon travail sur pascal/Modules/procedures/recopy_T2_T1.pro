procedure copyt2t1(t :tab2;l,c:integer;var R:tab1;var tai:integer);
// Recopie les ‚l‚ments de T (tableau … 2 dimensions) dans R (1 dimension) , ligne par
ligne
var i,j :integer;
BEGIN
tai:=0;
for i:= 1 to l do
for j:=1 to c do
BEGIN
tai:=tai+1;
R[tai]:=t[i,j];
END;
END;