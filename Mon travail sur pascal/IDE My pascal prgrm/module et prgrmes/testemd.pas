program emd;
uses crt;
var i,j,ab1,ab2,ab3,nbsup,nb:longint;tx,pretx:real;triplet:boolean;
{$i c:\algo\abondant.fon}
{$i c:\algo\somdiv.fon}
{$i c:\algo\supabond.fon}
begin
clrscr;
//--------question1--------------------------------------------------------------------------
i:=0;
repeat
i:=i+1;
until (abondant(i)) and (i mod 2<> 0);
writeln('le plus petit nombre abondant impair est :',i);
//---------question2-------------------------------------------------------------------------
ab1:=0;
ab2:=0;
ab3:=0;
triplet:=false;
i:=171078800;
repeat
 if abondant(i) then
 begin
 ab1:=ab2;
 ab2:=ab3;
 ab3:=i;
 if (ab2-ab1=1) and (ab3-ab2=1) then triplet := true;
 end;
i:=i+1;
until (triplet=true);
writeln('le plus petit triplet de nombres abondants consecutifs est forme de:',ab1,ab2,ab3);
//-------question3-------------------------------------------------------------------------
writeln('donner le nombre de nombres super abondants a afficher:');
readln(nb);
nbsup:=0;
i:=1;
repeat
 if supabond(i) then
 begin
 nbsup:=nbsup+1;
 writeln(nbsup,':',i);
 end;
i:=i+1;
until nbsup=nb;
readln;
end.
