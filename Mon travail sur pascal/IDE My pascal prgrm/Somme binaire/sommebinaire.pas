program somme_binaire;
var n1,n2,s:longint;

{$i modules/convbin_dec1.fon}
{$i modules/convdec_bin.fon}
begin
repeat
writeln('Donnez un nombre');
readln(n1);
writeln;
writeln('Donnez un autre nombre');
readln(n2);
writeln;
s:= convbin_dec1(n1)+convbin_dec1(n2);
s:=convdec_bin(s);
writeln('Votre r‚sultat est ',s);
until False;
end .