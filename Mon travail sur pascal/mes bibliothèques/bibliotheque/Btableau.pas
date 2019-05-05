


Unit Btableau;

Interface
Uses Crt;
Const max = 1000; maxl = 1000; maxc = 1000;
Type Tab1D = array[1..max] of longint;
     Tab2D = array[1..maxl,1..maxC] of longint;

//---------Lecture D'un Tableau-------------------------------------------------
{1.} Procedure Lect1D(Var T : tab1D;var n : longint);
{2.} Procedure Lect2D(var T : tab2D;var l,C : longint);
{3.} Procedure LectNtab (var T : tab2d; var n,c : longint; var Ttaille : tab1D );
{4.} Procedure Lect1Dalea(var T : tab1D; var n : longint; a,b : longint);
{5.} Procedure Lect2Dalea(var T : tab2D; var l,c : longint; a,b : longint);
//------------------------------------------------------------------------------

//---------Affichage D'un Tableau-------------------------------------------------
{6.} Procedure Ecri1D(T : tab1D; n : longint);
{7.} Procedure Ecri2D(T : tab2D; l,c : longint);
//------------------------------------------------------------------------------

//--------Procedures elementaires-----------------------------------------------
{8.} Procedure Permute(var A,B : longint);
//------------------------------------------------------------------------------

//--------Recherche D'un indice-------------------------------------------------
{9.} Function Ind_petit(T : tab1D; A,B : longint) : longint;
{10.}Function Ind_grand(T : tab1D; A,B : longint): longint;
{11.}Function lig_mincol(T : tab2D; l,col : longint): longint;
{12.}Function lig_maxcol(T : tab2D; l,col : longint): longint;
{13.}Function col_minlig(T : tab2D; lig,C : longint): longint;
{14.}Function col_maxlig(T : tab2D; lig,C : longint): longint;
//------------------------------------------------------------------------------

//-------Recherche de La Valeur du Min ou du Max--------------------------------
{15.}Function mintab1D(T : tab1D; n : longint): longint;
{16.}Function maxtab1D(T : tab1D; n : longint): longint;
{17.}Function mintab2D(T : tab2D; l,C : longint): longint;
{18.}Function maxtab2D(T : tab2D; l,C : longint): longint;
//------------------------------------------------------------------------------

//--------Sommes----------------------------------------------------------------
{19.}Function sommetab1D(T : tab1D; n : longint): longint;
{20.}Function sommecol(T : tab2D; l,Col : longint): longint;
{21.}Function Sommelig(T : tab2D; lig,C : longint): longint;
//------------------------------------------------------------------------------

//---------Comptage des elements------------------------------------------------
{22.}Function Comptinf(T : tab1D; n,V : longint) : longint;
{23.}Function FreqV1D(T : tab1D; n,V : longint) : longint;
{24.}Function FreqV2D(T : tab2D; l,C,V : longint) : longint;
{25.}Function FreqVlig(T : tab2D; lig,C,V : longint) : longint;
{26.}Function FreqVcol(T : tab2D; l,col,V : longint) : longint;
//------------------------------------------------------------------------------

//----------Conversion De Tables------------------------------------------------
{27.}Procedure Convert2to1(T2 : tab2D;l,C : longint; var T1 :tab1D; var n : longint);
{28.}Procedure Convert1to2(T1 : tab1D; n : longint;var T2 : tab2D; l : longint; var C : longint);
{29.}Procedure Invert1D(var T : tab1D; n : longint);
{30.}Procedure Transpose(var T : tab2D;var l,C : longint);
//------------------------------------------------------------------------------

//---------Insertion et suppression dans les Tableaux---------------------------
{31.}Procedure insertcase (var T : tab1D; var n : longint; V,R : longint);
{32.}Procedure Delcase (var T : tab1D;var n : longint;R : longint);
{33.}Procedure Dellig(var T : tab2D;var l : longint;C : longint; lig : longint);
{34.}Procedure Delcol(var T : tab2D;l : longint;var C : longint; col : longint);
//------------------------------------------------------------------------------

//--------Tri de tableau à une dimension----------------------------------------
{35.}Procedure Tri_select(var T : tab1D; n : longint);
{36.}Procedure Tri_transp(var T : tab1D; n : longint);
{37.}Procedure Tri_bulle(var T : tab1D; n : longint);
{38.}Procedure Tri_compt3(T1 : tab1D; n : longint; var T2 : tab1D);
{39.}Procedure Tri_compt2(var T : tab1D; n : longint);
{40.}Procedure Tri_compt1(var T : tab1D; n : longint);
//------------------------------------------------------------------------------

//-------Tri dans les tableaux de deux Dimensions-------------------------------
{41.}Procedure Tri2dim(var T : tab2D;l,c : longint);
{42.}Procedure Trilig(var T : tab2D;lig,c : longint);
{43.}Procedure Tricol(var T : tab2D;l,col : longint);
//------------------------------------------------------------------------------

//-------Recherche Dans les tableaux à une dimension Triés----------------------
{44.}function rechdich( T : tab1D; n,V : longint ): longint;
//------------------------------------------------------------------------------

Implementation

//------------------------------------------------------------------------------
Procedure Lect1d (var T : tab1d; var n : longint);
var i,indx : longint; s : string;
begin
s:='';
write('n = '); readln(n);
for i:=1 to n do
    begin
    indx:=whereX;
    readln(T[i]);
    str(T[i],S);
    gotoxy(indx  + length(s) + 3 ,wherey-1);
    end;
writeln;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Lect2d (var T : tab2d; var l,c : longint);
var i,j,indx : longint; S : string;
begin
write('l = '); readln(l);
write('C = '); readln(C);
S:='';
for i:=1 to l do
    begin
    for j:=1 to C do
        begin
        indx := whereX;
        readln(T[i,j]);
        str(T[i,j],S);
        gotoxy(indX + length(S) + 3,wherey-1);
        end;
    writeln;
    end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure LectNtab (var T : tab2d; var n,c : longint; var Ttaille : tab1D );
var i,j,indx : longint; S : string;
begin
write('Entrez le nombre de tableaux, n = '); readln(n);
S:='';
C:=1;
for i:=1 to n do
    begin
    write('Taille Du Tableau ',i,' : ');
    readln(Ttaille[i]);
    if C < Ttaille[i] then C := Ttaille[i];
    for j:=1 to Ttaille[i] do
        begin
        indx := whereX;
        readln(T[i,j]);
        str(T[i,j],S);
        gotoxy(indX + length(S) + 3,wherey-1);
        end;
    writeln;
    end;
end;
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
Procedure lect1Dalea (var T : tab1D; var n : longint; A,B : longint);
var i : longint;
begin
write('n = ');readln(n);
randomize;
for i:=1 to n do T[i] := random(B-A+1) + A;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure lect2Dalea (var T : tab2D; var l,c : longint; A,B : longint);
var i,j : longint;
begin
write('l = '); readln(l);
write('C = '); readln(C);
randomize;
for i:=1 to l do
    for j:=1 to C do T[i,j] := random(B-A+1) + A;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Ecri1d(T : Tab1d; n : longint);
var i,j,shift,maxT: longint; S : string;
begin
maxT := T[1];
for i:=1 to n do if maxT < T[i] then maxT := t[i];
textcolor(3);
write(#196);
gotoxy(wherex-1,wherey+1);write(#179);
gotoxy(wherex-1,wherey+1);write(#196);
str(maxT,S);
Shift := length(S) + 1;
for i:=1 to n do
    begin
    gotoxy(wherex,wherey-2);
    textcolor(3);
    for j:=1 to shift+1 do write(#196);
    gotoxy(whereX-shift -1,wherey+1);
    textcolor(15);
    write(T[i]);
    str(T[i],S);
    write('' : shift - length(S));
    textcolor(3);
    write(#179);
    gotoxy(whereX-shift-1,wherey+1);
    for j:=1 to shift+1 do write(#196);
    end;
textcolor(15);
writeln;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Ecri2d(T : Tab2d; l,C : longint);
var i,j,k,debX,maxT,shift : longint; S : string;
begin

maxT:=t[1,1];
for i:=1 to l do for j:=1 to C do if maxT < T[i,j] then maxT := t[i,j];
str(maxT,S);
shift := length(S)+1;

debX:=whereX;
for i := 1 to l do
begin
textcolor(3);
write(#196);
gotoxy(wherex-1,wherey+1);write(#179);
gotoxy(wherex-1,wherey+1);write(#196);
 for J:=1 to C do
    begin
    gotoxy(wherex,wherey-2);
    textcolor(3);
    for k:=1 to shift+1 do write(#196);
    gotoxy(whereX-shift- 1 ,wherey+1);
    textcolor(15);
    str(T[i,j],S);
    write(T[i,j]);write('':shift-length(S));
    textcolor(3);
    write(#179);
    gotoxy(whereX-shift- 1 ,wherey+1);
    for k:=1 to shift+1 do write(#196);
    end;
gotoXY(debX,Wherey);
end;
textcolor(15);
writeln;
writeln;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Permute(var A,B : longint);
var C : longint;
begin
C:=A;
A:=B;
B:=C;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function ind_petit(T : tab1D; a,b : longint): longint ;
var i,inter: longint;
begin
inter := a;
for i:=a+1 to b do if T[i] < T[inter] then inter := i;
ind_petit := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function ind_grand(T : tab1D; a,b : longint) : longint ;
var i,inter : longint;
begin
inter := a;
for i:=a+1 to b do if T[i] > T[inter] then inter := i;
ind_grand := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function lig_Mincol (T : tab2D; l,col : longint) : longint;
var i : longint;
begin
lig_mincol:=1;
for i:=2 to l do if T[i,Col] < T[lig_mincol,col] then lig_mincol := i;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function lig_Maxcol (T : tab2D; l,col : longint ) : longint;
var i : longint;
begin
lig_maxcol:=1;
for i:=2 to l do if T[i,Col] > T[lig_maxcol,col] then lig_maxcol := i;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function col_minlig (T : tab2D; lig,C : longint) : longint;
var j : longint;
begin
col_minlig:=1;
for j:=2 to C do if T[lig,j] < T[lig,col_minlig] then col_minlig := j;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function col_maxlig (T : tab2D; lig,C : longint) : longint;
var j: longint;
begin
col_maxlig:=1;
for j:=2 to C do if T[lig,j] > T[lig,col_maxlig] then col_maxlig := j;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function mintab1D (T : tab1D; n : longint) : longint;
var i,inter : longint;
begin
inter := T[1] ;
for i:=1 to n do if inter > T[i] then inter := T[i];
mintab1D := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function maxtab1D (T : tab1D; n : longint) : longint;
var i,inter : longint;
begin
inter := T[1] ;
for i:=1 to n do if inter < T[i] then inter := T[i];
maxtab1D := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function mintab2D (T : tab2D; l,C : longint) : longint;
var i,j,inter : longint;
begin
inter := T[1,1] ;
for i:=1 to l do for j:=1 to C do if inter > T[i,j] then inter := T[i,j];
mintab2D := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function maxtab2D (T : tab2D; l,C : longint) : longint;
var i,j,inter : longint;
begin
inter := T[1,1] ;
for i:=1 to l do for j:=1 to C do if inter < T[i,j] then inter := T[i,j];
maxtab2D := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function Sommetab1D ( T : tab1D; n : longint) : longint;
var i,inter : longint;
begin
inter := 0;
for i:=1 to n do inter := inter + T[i];
sommetab1D := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function Sommecol ( T : tab2D; l,Col : longint) : longint;
var i,inter : longint;
begin
inter := 0;
for i:=1 to l do inter := inter + T[i,col];
sommecol := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function Sommelig ( T : tab2D; lig,C : longint) : longint;
var j,inter : longint;
begin
inter := 0;
for j:=1 to C do inter := inter + T[lig,j];
sommelig := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function comptinf(T : tab1D; n,V : longint ) : longint;
var i,inter : longint;
begin
inter := 0 ;
for i:= 1 to n do if T[i]<V then inter := inter + 1 ;
comptinf := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function FreqV1D(T : tab1D; n,V : longint):longint;
var i,inter : longint;
begin
inter:=0;
for i:=1 to n do if T[i] = V then inter := inter + 1;
freqV1D := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function FreqV2D(T : tab2D; l,C,V : longint):longint;
var i,j,inter : longint;
begin
inter:=0;
for i:=1 to l do for j:=1 to C do if T[i,j] = V then inter := inter + 1;
freqV2D := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function FreqVlig(T : tab2D; lig,C,V : longint) : longint;
var j,inter : longint;
begin
inter := 0;
for j:=1 to C do if T[lig,j] = V then inter := inter + 1;
freqVlig := inter ;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function FreqVcol(T : tab2D; l,col,V : longint) : longint;
var i,inter : longint;
begin
inter :=0;
for i:=1 to l do if T[i,col] = V then inter := inter + 1;
freqVcol := inter ;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure Convert2to1 (T2 : tab2D; l,C : longint; var T1 : tab1D ; var n : longint);
var i,j : longint;
begin
for i:=1 to l do for j:=1 to C do T1[j + (i - 1)*C]:=T2[i,j];
n:= l * C;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure Convert1to2 (T1 : tab1D; n : longint;var T2 : tab2D;l : longint;var C : longint);
var i : longint;
begin
if (n mod l) = 0 then C:=n div l else C:=n div l + 1;
for i:=1 to L*C do T2[(i-1) div C + 1,(i-1) mod C + 1]:=0;
for i:=1 to n do T2[(i-1) div C + 1,(i-1) mod C + 1] := T1[i];
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Invert1D(var T : tab1D; n : longint);
var i : longint;
begin
for i:=1 to n div 2 do Permute(T[n-i+1],T[i]);
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure transpose(var T: tab2D; var l,C : longint);
var i,j,LC : longint;
begin
if l>C then LC:=l else LC:=C;
for i:=1 to LC do for j:=1 to LC do if j>i then permute(T[i,j],T[j,i]);
permute(l,C);
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure insertcase (var T : tab1D; var n : longint; V,R : longint);
var i : longint;
begin
if R<=n then for i:= R to n+1 do permute(T[i],V)
        else T[n+1] := V;
n:=n+1;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure DelCase (var T : tab1D; var n : longint; R : longint);
var i : longint;
begin
if R <= n then
   begin
   for i:=R to n-1 do T[i]:=T[i+1];
   n:=n-1;
   end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure dellig (var T : tab2D;var l : longint; C,lig : longint);
var i,j : longint;
begin
if lig <= l then
   begin
   for i:=lig to l-1 do for j:=1 to C do T[i,j]:=T[i+1,j];
   l:=l-1;
   end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure delcol (var T : tab2D; l : longint; var C : longint ;col : longint);
var i,j : longint;
begin
if col <= C then
   begin
   for j:=col to C-1 do for i:=1 to l do T[i,j] := T[i,j+1];
   C := C-1;
   end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tri_select(var T : tab1D; n : longint);
var i : longint;
begin
for i:=1 to n-1 do permute (T[i], T[ind_petit(T,i,n)]);
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tri_transp(var t : tab1D; n : longint);
var i,j : longint ;
begin
for i:=1 to n-1 do
    begin
    j:=i;
    while (T[j] > T[j+1]) and (j > 0) do
          begin
          Permute(T[j],T[j+1]);
          j:=j-1;
          end;
    end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tri_Bulle(var t : tab1D; n : longint );
var i,m : longint ; modif : boolean;
begin
modif := True ;
m:=n;
while modif or (m>2) do
      begin
      modif := false;
      for i:=1 to m-1 do if T[i] > T[i+1] then
          begin
          permute(T[i],T[i+1]);
          modif := true;
          end;
      m:=m-1;
      end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tri_compt3(T1 : tab1D; n : longint; var T2 : tab1D);
var i,j,k : longint;
    tabcompt : tab1D;
begin
for i:=1 to n do tabcompt[i] := comptinf(T1,n,T1[i]);
for i:=1 to n-1 do
    begin
    k:=1;
    for j:=i+1 to n do if tabcompt[i] = tabcompt[j] then
        begin
        tabcompt[j] := tabcompt[j] + k;
        k := k+1;
        end;
   end;
for i:=1 to n do T2[tabcompt[i]+1] := T1[i];
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure Tri_compt2(var T : tab1D; n : longint);
var i,j,k : longint;
    tabcompt : tab1D;
begin
for i:=1 to n do tabcompt[i] := comptinf(T,n,T[i]);
for i:=1 to n-1 do
    begin
    k:=1;
    for j:=i+1 to n do if tabcompt[i] = tabcompt[j] then
        begin
        tabcompt[j] := tabcompt[j] + k;
        k := k+1;
        end;
     end;
i:=1;
while i< n do
      begin
      while i <> (tabcompt[i] + 1) do
            begin
            permute(T[i],T[tabcompt[i]+1]);
            permute(tabcompt[i],tabcompt[tabcompt[i]+1]);
            end;
      i := i+1;
      end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tri_Compt1(var T : tab1d; n : longint);
var i,cpt,k : longint;
begin
i:=1;
while i<n do
      begin
      cpt := comptinf(T,n,T[i]);
      if (cpt+1)<= i then i:=i+1 else
        begin
        k:=1;
        while T[i] = T[cpt+k] do k:=k+1;
        permute(T[i],T[cpt+k]);
        end;
      end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tri2Dim(var T : tab2D;l,c : longint);
var inter : tab1D; n : longint;
begin
convert2to1(T,l,c,inter,n);
tri_compt1(inter,n);
converT1to2(inter,n,T,l,C);
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Trilig(var T : tab2D; lig,C : longint);
var j : longint;
    inter : tab1D;
begin
for j:=1 to C do inter[j]:=T[lig,j];
tri_compt1(inter,C);
for j:=1 to C do T[lig,j] := inter[j]
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Tricol(var T : tab2D; l,Col : longint);
var i : longint;
    inter : tab1D;
begin
for i:=1 to l do inter[i] := T[i,col];
tri_compt1(inter,l);
for i:=1 to l do T[i,col] := inter[i];
end;
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
function rechdich( T : tab1D; n,V : longint ): longint;
var Binf,Bsup,mediane : longint;
begin
Binf:=1;
Bsup:=n;
mediane := (Binf + Bsup) div 2 ;
while (Bsup>=Binf) and (T[mediane] <> V) do
      begin
      if V < T[mediane] then Bsup := mediane - 1 else Binf := mediane + 1 ;
      mediane := (Bsup + Binf) div 2;
      end;
if T[mediane] = V then rechdich := mediane else rechdich := -1;
end;
//------------------------------------------------------------------------------




begin
end.
