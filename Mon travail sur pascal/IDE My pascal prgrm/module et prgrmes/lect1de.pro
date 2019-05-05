

procedure lect1de(var t:tab1 ;var taille:longint);
var i:longint;
begin
writeln('donner la taille du tableau');
readln(taille);
for i:=1 to taille do
begin
writeln ('t[',i,']=');
readln (t[i]);
end;
end;


