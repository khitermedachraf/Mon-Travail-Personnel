program abondance ;
uses crt ;
var i,n,cpt:longint;
    f: boolean ;

 {$i Modules\abondant.fon}
 {$i Modules\Triplet.fon}
 {$i Modules\Supab.fon}
  begin
  clrscr ;
    f:= true ;
 n:=1 ;
 while f= true do
  begin
   if( abondant(n)=true )  and (n mod 2=1) then
    begin
     writeln( 'le plus petit nombre abondant impair est : ',n) ;
     f:= false ;
    end
   else n:= n+1 ;
  end ;

 for i:=171078825 to  171078835 do
  begin
  if Triplet(i)=true then
   begin
  writeln(' le plus petit triplet est', i,',', i+1,',',i+2) ;
   end ;
  end ;

 i:=0 ;
 cpt:= 0 ;
 writeln(' les 20 premiers nombres super abondants sont : ') ;
  repeat
  i:= i+1 ;
  if (abondant(i)=true) and (Supab(i)=true) then
   begin
    cpt:= cpt+1 ;
    writeln(i) ;
   end ;
  until cpt=20 ;

  readln() ;
 end .



