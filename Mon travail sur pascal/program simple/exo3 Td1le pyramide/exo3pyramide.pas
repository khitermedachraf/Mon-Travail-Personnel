program exo3_lepyramide;
var a,b,c,d,e,f,g,h,i,j : integer ;
begin
i:=1;
repeat
h:= (19-i) div 2 ;
d:= 3+h ;
e:= h +i ;
j:= (17-i) div 2 ;
f:= i+j ;
g:= j+6 ;
c:=e+f ;
a:= c +22 ;
b:= c+ 23 ;
i:=i+2;
until a+b = 111 ;
writeln;
writeln;
writeln;
writeln;
writeln  (' les contenus des cases sont :');
writeln  ('     a=  ',a);
writeln  ('     b=  ',b);
writeln  ('     c=  ',c);
writeln  ('     d=  ',d);
writeln  ('     e=  ',e);
writeln  ('     f=  ',f);
writeln  ('     g=  ',g);
writeln  ('     h=  ',h);
writeln  ('     i=  ',i-2);
writeln  ('     j=  ',j);
writeln;
writeln;
writeln;
write ( ' khiter Med Achraf : je suis ing‚nieur num 01 :) ');
readln;
end.






