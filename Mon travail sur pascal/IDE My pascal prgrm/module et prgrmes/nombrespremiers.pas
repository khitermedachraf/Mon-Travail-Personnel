program nombres_premiers;
Var n,d1,d2,i: longint;

BEGIN
writeln ('donner un nombre diff‚rent de 0');
READln(N);
d1:=1;
d2:=1;
i:=2;
while ( n mod i <> 0 ) and ( i <= n div 2 ) do
i:=i+1;
if i> n div 2  then d2 := n;
if d1 <> d2  then write ( n ,'est premier' )
eLSe write ( n,'n''est pas premier' );
readln ();
end.
