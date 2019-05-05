program TP2_KERMICHE_GHARSI;
uses crt ;
type
nbr=1..9;
tabsud=array [1..15,1..15] of longint;
tab1d = array [1..100]of longint ;
var gs:tabsud;
h:tab1d;
col, lig , r ,i,j,t: longint ;
procedure verif_grille ( t1 : tab1d ; var tab : tabsud ) ;
var i,j,l,c : longint ;
b1,b2,b3 : boolean ;
procedure verif_ligne ( tab:tabsud ; i ,j ,col : longint ; var bool : boolean);
var t , cpt  : longint ;
begin
bool:= false;
  for t:=1 to col do
   begin
    if( t<>j) then
     begin
      if( tab[i,j] = tab[i,t] )then
       cpt:=cpt+1;
     end;
	 if (cpt>1) then
         bool:=true;
	 writeln('je suis la ', tab[i,j]);
   end;
end;
procedure verif_colonne ( tab :tabsud ; i,j,lig : longint; var bool2:boolean );
var s, cpt  : longint ;
begin
 bool2:= false;
  for s:=1 to lig do
  Begin
    if( i<>s) then
     begin
      if( tab[i,j] = tab[s,j] )then
       cpt:=cpt+1;
     end;
	 if (cpt>1) then
         bool2:=true;
         writeln('im here',tab[i,j]);
     end;
end;
procedure verif_region(tab : tabsud ; i,j,a,b : longint ; var bool3 : boolean);
var u,v,cpt , lig , col : longint ;
begin
	bool3:=false ;
	writeln ('coco');
for u:=lig to (lig+2) do
 begin
  for v:=col to (col+2) do
    begin
     if (tab[i,j]=tab[u,v]) then
         cpt:=cpt+1;
	 writeln('bb');
     if (cpt>1)then
     writeln ('hiiiiii');
     bool3:=true;
     end;
   end;
 end;
Begin
	r:=1;
	l:=9;
	c:=9;
for i:=1 to l do
 Begin
	for j:=1 to c do
	begin
		verif_ligne(tab,i,j,l,b1) ;
		verif_colonne(tab,i,j,c,b2);
		writeln('hgjkh');
if (i>=1) and (i<=3) then
writeln('hhh');
begin
	if (j>=1) and (j<=3) then writeln('ghgfdxfg'); 
	verif_region (tab,i,j,1,1 ,b3) ;
	if (j>=4) and (j<=6) then verif_region(tab,i,j,1,4,b3);
	if (j>=7) and (j<=9) then verif_region (tab,i,j,1,7,b3);
	writeln('coco');
end;
if (i>=4) and (i<=6) then
begin
	if (j>=1) and (j<=3) then verif_region(tab,i,j,4,1,b3) ;
	if (j>=4) and (j<=6) then verif_region(tab,i,j,4,4,b3);
	if (j>=7) and (j<=9) then verif_region(tab,i,j,4,7,b3);
end;
if (i>=7) and (i<=9) then
begin
	if (j>=1) and (j<=3) then verif_region(tab,i,j,7,1,b3) ;
	if (j>=4) and (j<=6) then verif_region(tab,i,j,7,4,b3);
	if (j>=7) and (j<=9) then verif_region(tab,i,j,7,7,b3);
end;
end;
if (b1=false) and (b2=false) and (b3=false) then
Begin
writeln('hghgfgddersdfg');
textcolor(132);
writeln ('votre grille de sudoku n''est pas valide!');
textcolor(yellow);
writeln ('les elements errones dans votre grille sont :');
t1[r]:=i;
t1[r+1]:=j;
r:=r+2;
  for t:=1 to r do
Begin
  writeln('[',t1[t], ',' ,t1[t+1],']');
end;
t:=t+2;
  textcolor(yellow);
  writeln('essayez de les changer par des elements correctes et voici votre grille : ');
textbackground(red);
textcolor(magenta+blink);
write (tab[i,j] ,'|');
End
Else
Begin
	textcolor(132);
	writeln('votre grille de sudoku est totalement correcte ! BRAVO! ');
	textbackground(black);
	textcolor(white);
	write (tab[i,j] ,'|');
end;
end;
end;
Procedure EcriT2D(var T:Tabsud; Nblig,Nbcol:longint);
(* _____________________________________________ *)
(* La proc‚dure EcriT2D nous affiche une matrice *)
(* --------------------------------------------- *)
var i,j:longint;
Begin
For i:=1 to Nblig Do
        Begin
        For j:=1 to Nbcol Do
                Begin
                write(T[i,j],' | ');
                End;
        writeln(' ');
        End;
End;
{$i modules\remplissage.pro}
Begin
	remplissage(gs,lig,col);
	verif_grille(h , gs);
	writeln ('asma');
	ecrit2d(gs,9,9);
end.
