program somme_binaire;
var n1,n2,s:longint;
function convbin_dec(x:longint):longint;
var a,puiss,res:longint;
begin
puiss:=1;
res:=0;
while x<>0 do
        begin
        a:=x mod 10;
        res:= res+ a*puiss;
        puiss:=puiss*2;
        x:=x div 10;
        end;
convbin_dec:=res;
end;
function convdec_bin(y:longint):longint;
var puiss,a,res:longint;
begin
puiss:=1;
res:=0;
while y<>0 do
        begin
        a:=y mod 2;
        res:= res+ a*puiss;
        puiss:=puiss*10;
        y:=y div 2;
        end;
convdec_bin:=res;
end;
begin
repeat
writeln('Donnez un nombre');
readln(n1);
writeln;
writeln('Donnez un autre nombre');
readln(n2);
writeln;
s:= convbin_dec(n1)+convbin_dec(n2);
s:=convdec_bin(s);
writeln('Votre r�sultat est ',s);
until False;
end.