UNIT biblio1;

INTERFACE
Type matrice=Array[1..1000,1..1000] of longint;
Type Tab=Array[1..1000] of longint;

//FONCTIONS
{01}function FiBo(n:longint):longint; (*donne le Nieme element de la suite de Fibonacci*)

{02}Function premier(X : longint) : Boolean; (* rend vrai quand X est premier et faux sinon*)

{03}function Som_Div(n:longint):longint; (*donne la somme des diviseur propres de N*)

{04}function Parfait(a:longint):boolean; (*donne vrai si N est parfait*)

{05}function Puiss(n,p:longint):longint; (*Calcule n puissance p*)

{06}function Conv_B1_DEC(N,B1:longint):longint;(*converti N de la base B1 vers le decimal base10*)

{07}function Conv_DEC_B2(N,B2:longint):longint;(*convertir N du decimal vers la base B2*)

{08}function Conv_B1_B2(N,B1,B2:longint):longint;(*convertir N de la base B1 vers la base B2*)

{09}function NBpos(n:longint):longint;(*donne le nombre de chiffres qui compose un entier n*)

{10}function Concate(a,b:longint):longint; (*concatener deux nombres a et b dans cet ordre*)

{11}function extpos(x,pos,k:longint):longint;(*Extraire un nombre de "k" chiffres de "x" a partir de la position pos*)

{12}function Freq(Ch,X:longint):longint;(*Renvoie le nombre d'apparition d'un chiffre Ch dans un nombre X*)

{13}function Swapping(X:longint):longint;(*effectue un swapping sur n (permute les poinds fort et faible d'un nombre*)

{14}function Croissant(X:longint):longint;(*Ordonne les chiffres de X du plus petit au plus grand*)

{15}function facto(n:longint):longint;(*Calcule le factoriel d'un nombre n*)

{16}function Som_ch(x:longint):longint;(*Calcule la somme des chiffres composant x*)

{17}function Harshad(N,i:longint):boolean;(*Donne vrai si N est un nombre Harshad dans la base i*)

{18}function Harshad_Complet(N:longint):boolean;(*Donne vrai si N est un nombre Harshad dans toutes les bases*)

{19}function PGCD(x,y:longint):longint;(*Renvoi le plus grand commun diviseur de x et y*)

{20}function PPCM(x,y:longint):longint;(*Renvoi le plus petit commun multiple de x et y*)

{21}function Miroir(x:longint):longint;(*Donne le miroir d'un nombre x (met le nombre a l'envers)*)

{22}function Produit_ch(x:longint):longint;(*Calcule le Produit des chiffres composants x*)

{23}function Decroissant(X:longint):longint;(*Ordonne les chiffres de X du plus grand au plus petit*)

{24}function Distinct(N:longint):Boolean; (*retourne TRUE si le nombres n'est compose que de chiffres distincts et FALSE dans le cas contraire*)

{25}function max(n1,n2:longint):longint;(*nous donne le plus grand entre deux entier*)

{26}function min(n1,n2:longint):longint;(*nous donne le plus petit entre deux entier*)

{27}function Add_base(n1,n2,b:longint):longint;(*Nous calcule l'addition de deux nombre dans une base quelconque*)

{28}function Verif(X1,X2:longint):boolean;(*Verifie si deux nombres sont compose de meme chiffres*)

{29}function Min_ch(X:longint):longint;(*Renvoi le plus petit chiffre d'un nombre donn√© X*)

{30}function Max_ch (X:longint):longint;(*Renvoi le plus grand chiffre d'un nombre donn√© X*)

{31}function permutch (A,ch2,pos:longint):longint; {remplace le chiffre de la position "pos" par "ch2"}

{32}function DecCirculaire (a:longint):longint; {faire un decalage circulaire sur un nombre N donnÇ}

{33}function code_gray (Ng:longint):longint; {donne le nombre suivant Ng (avec le code Gray)}

{34}function abondant(A:longint):boolean; {donne "true" si le nombre A est abondant et "false" si le nombre A n'est pas abondant}

{35}function super_abondant (A:longint):boolean; {Retourne 'TRUE' si A est super_abondant, 'FALSE' sinon}

{36}function ind_petit (t:tab;a,b:longint):longint; {Donne l'indice du plus petit element du tableau T}

{37}function Nbelem (T:tab; taille, val:longint):longint; {Donne le nombre d'elements du tableau T equivaut a Val}

{38}Function NbElemtPP(T:tab; Taille, IndElem : longint): longint; {donne le nombre d'elements plus petit que l'element de l'indice "IndElem"}

{39}function fecondite (X:longint):longint; {donne la fecondite de X}

{40}function ver_fibo (A:longint):boolean; {sort vrai quand A appartient a la suite de fibonacci, faux sinon}

{41}function ch_centre (A:longint):boolean;  {Sort "vrai" lorsque la partie centrale de A est composee des memes chiffres et sort "faux" dans le cas contraire}

{42}function tab_egal (A,B:tab; taille1,taille2:longint):boolean; {Sort vrai si les tableaux A et B sont egaux et faux sinon}

{43}function matrice_egal (A,B:matrice; lig1,lig2,col1,col2:longint):boolean;  {Sort vrai si les matrices A et B sont egales et faux sinon}


//PROCEDURES
{1}procedure extrsup (A, pos:longint; var pch,res:longint); {retourne en sortie le chiffre ayant la position "pos" et le supprime du nombre A et met dans res le nouveau nombre}
//PROCEDURES TABLEAUX
     //TRIS
{2}Procedure TriTrans (var tabTrans:tab; TailTrans:longint); {Trie les elements du tableau par la methode de transposition}

{3}Procedure tri_bulles (var T:tab; taille:longint); {ordonne les elements du tableau T selon la methode de tri a bulles}

{4}Procedure tri_3table (var T:tab; taille:longint; var B:tab); {trie les elements du tableau T selon la methode de tri a 3 tables}

{5}//2table

{6}Procedure Tri1table(var T:tab; Taille : longint); {Trie les elements du tableau T selon la methode de tri a 1 table}

{7}Procedure tri_selec (var T:tab;tai:longint); {trie les elements d'un tableau T selon la methode de tri par selection}

     //AUTRES
{8}procedure tab_comptage (T:Tab; taille:longint;var A:Tab); {Cree le tableau de comptage A du tableau T}

{9}procedure lect1d (var T:Tab; var taille:longint); {Lit un tableau Ö une dimension dont les ÇlÇments sont des entiers}

{10}procedure ecrire1d ( T:Tab; tai:longint);  {affiche un tableau a une dimension dont les elements sont des entiers}

{11}procedure alea1d (var T:Tab; taille:longint); {Genere des nombres aleatoires et les range dans le tableau T}

{12}procedure copie_tab (T1:Tab;tail1:longint;var T2:Tab;var tail2:longint); {Copie le contenu du tableau T1 dans T2}

{13}procedure permut (var A, B:longint); {permute les contenus de A et B}

{11}Procedure Lect2D(var T:matrice; var nblig,nbcol:longint); {Lecture d'un tableau a deux dimensions de nblig lignes et de nbcol colonnes}

{12}Procedure Ecrire2D(var T:matrice; Nblig,Nbcol:longint); {Affiche un tableau a deux dimensions de Nblig lignes et Nbcol colonnes}

{13}procedure transposee_mat(A1:matrice;nbcol, nblig:longint; var A2:matrice); {Donne la matrice transposee de la matrice A1}

{14}procedure ver_fois_mat(vecteur:Tab; nbcol,nblig:longint;var T:matrice); {Donne en sortie la matrice T resultat de la multiplication de la matrice d'entree par le vecteur}

{15}procedure produit_mat(A,B:matrice;n,m,p:longint;var C:matrice); {Donne la matrice C qui represente le produit des deux matrices A et B}

{16}procedure pp_pg_colonne(T:matrice; nblig,cd:longint;var pp,pg:longint); {Donne l'element le plus petit "pp" ainsi que l'element le plus grand "pg" de la colonne "cd" de la matrice entree}

{17}procedure pp_pg_ligne(T:matrice; nbcol,ld:longint;var pp,pg:longint); {Donne l'element le plus petit "pp" ainsi que l'element le plus grand "pg" de la ligne "ld" de la matrice entree}

{18}procedure tab_min_colonne(T:matrice; lig,cl:longint;var T1:Tab); {Donne un tableau a 1 dimension qui contient les elements les plus petits de toutes les colonnes}

{19}procedure add_mat (A,B:matrice;nblig,nbcol:longint;var R:matrice); {Donne en sortie la matrice R qui represente le resultat de l'addition des deux matrices A et B}

{20}procedure entier_fois_mat (A:matrice;Nbcol,Nblig,Nfois:longint;var B:matrice); {Donne en sortie la matrice B qui est le resultat de la multiplication de la matrice A par le nombre Nfois}

IMPLEMENTATION
//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION FiBo(n:longint):longint;
//donne le Nieme element de la suite de Fibonacci
  var i,avder,der,elem:longint;
begin
  if ( (n=1) or (n=2) )then
     begin
     FiBo:=1;
     end;
  if n>2 then
     begin
     der := 1;
     avder :=1;
     for I := 3 to n do
        BEGIN
        elem := der + avder;
        avder := der;
        der := elem;
        END;
     fibo:=elem;
     end;
  end;
//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

Function premier(X : longint) : Boolean;
//----- rend vrai quand NPrem est premier et faux sinon ------------------
Var i : longint; inter : boolean;
Begin
if X<=1 then inter:=false else inter:=true;
I := 2;
while (i <= X div 2) and inter do
      begin
      if X mod i = 0 then inter := false;
      I := i+1;
      end;
Premier := inter;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Som_Div(n:longint):longint;
//--------------(*donne la somme des diviseur propres de N*)--------------
   var i,som:longint;
   begin
   som:=1;
      for i:=2 to ( n div 2)do
      begin
      if (n mod i)=0 then
      som:=som+i;
      end;
   Som_Div:=som;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Parfait(a:longint):boolean;
//--------------(*donne vrai si N est parfait*)--------------
 BEGIN
 Parfait:=false;
 if (Som_Div(a)=a) then
 Parfait:=true;
 end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Puiss(n,p:longint):longint;
//--------------(*Calcule n puissance p*)--------------
 var i,r:longint;
 begin
 r:=1;
   for i:=1 to p do
   begin
   r:=r*n
   end;
   Puiss:=r;
   end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Conv_B1_DEC(N,B1:longint):longint;
//--------------(*converti N de la base B1 vers le decimal base10*)--------------
var m,p,s:longint;
        BEGIN
        m:=0;
        s:=0;
        p:=1;
        while (N div p)<>0 do
          begin
          S:=S+((n div p)mod 10)* puiss(B1,m);
          P:=P*10;
          m:=m+1;
          end;
          Conv_B1_DEC:=s;
          end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Conv_DEC_B2(N,B2:longint):longint;
//--------------(*convertir N du decimal vers la base B2*)--------------
var m,p:longint;
        BEGIN
        m:=0;
        p:=0;
        while (N<>0) do
          begin
          m:=m+(n mod B2)* puiss(10,p);
          P:=P+1;
          N:=N div B2;
          end;
          Conv_DEC_B2:=m;
          end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Conv_B1_B2(N,B1,B2:longint):longint;
//--------------(*convertir N de la base B1 vers la base B2*)--------------
BEGIN
Conv_B1_B2:=Conv_DEC_B2((Conv_B1_DEC(N,B1)),B2);
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION NBpos(n:longint):longint;
//--------------(*donne le nombre de chiffres qui compose un entier n*)--------------
var p:longint;
begin
p:=0;
repeat
p:=p+1;
n:=n div 10;
until n=0;
NBpos:=p;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Concate(a,b:longint):longint;
//--------------(*concatener deux nombres a et b dans cet ordre*)--------------
begin
Concate:=a*Puiss(10,NBpos(b))+b;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION extpos(x,pos,k:longint):longint;
//--------------(*Extraire un nombre de k chiffres de x ‚Ä¶ partir de la position pos*)--------------
   begin
extpos:=(x div Puiss(10,pos-1))mod Puiss(10,k);
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Freq(Ch,X:longint):longint;
//--------------(*Renvoie le nombre d'apparition d'un chiffre Ch dans un nombre X*)--------------
  var inter:longint;
  begin
  X:=abs(X);
  inter:=0;
    while (X>0) do
    begin
      If X mod 10=Ch then
      begin
      inter:=inter+1
      end;
    X:=X div 10
    end;
Freq:=inter;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Swapping(X:longint):longint;
//--------------(*effectue un swapping sur n (permute les poinds fort et faible d'un nombre)*)--------------
  var Pfaible,Pfort,Signe:longint;
begin
 if (X <> 0) then
 begin
 signe:=abs(X) div X;
 end
 else
 begin
 signe:=1;
 end;
 X:=abs(X);
 Pfort:=extpos(X,NBpos(X),1);
 Pfaible:=X mod 10;
Swapping:=Signe*(X+((Pfaible-Pfort)*(Puiss(10,NBpos(X)-1)-1)))
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Croissant(X:longint):longint;
//--------------(*Ordonne les chiffres de X du plus petit au plus grand*)--------------
 Var inter,usex,C:longint;
 Begin
 inter:=0;
 for C:=1 to 9 do
 begin
 usex:=X;
  while usex>0 do
  begin
  if (usex mod 10=C) then
  inter:=10*inter+C;
  usex:=usex div 10;
  end;
  end;
Croissant:=inter;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION facto(n:longint):longint;
//--------------(*Calcule le factoriel d'un nombre n*)--------------
var res,i:longint;
begin
res:=1;
for i:=1 to n do
begin
res:=i*res;
end;
facto:=res;
end;
//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------
FUNCTION Som_ch(x:longint):longint;
//--------------(*Calcule la somme des chiffres composants x*)--------------
   var som,i:longint;
  begin
som:=0;
For i:=1 to NBpos(x) do
begin
som:=extpos(x,i,1)+som;
end;
Som_ch:=som;
end;
//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Harshad(N,i:longint):boolean;
//--------------(*Donne vrai si N est un nombre Harshad dans la base i*)--------------
var S:longint; var Harsh:boolean;
begin
Harsh:=false;
S:=(Conv_B1_DEC(N,i));
if ((S mod Som_ch(N))=0) then
begin
Harsh:=True;
end;
Harshad:=Harsh;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Harshad_Complet(N:longint):boolean;
//--------------(*Donne vrai si N est un nombre Harshad dans toutes les bases*)--------------
var i,M:longint; var harsh:boolean;
begin
harsh:=true;
i:=2;
  while (harsh=true) and (i<500) do
  begin
  M:=Conv_DEC_B2(N,i);
   if (Harshad(M,i)=true)then
    begin
     harsh:=true;
     i:=i+1;
      end
      else
      begin
      harsh:=false;
      end;
      end;
Harshad_Complet:=harsh;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION PGCD(x,y:longint):longint;
//--------------(*Renvoi le plus grand commun diviseur de x et y*)--------------
Var R,PG:longint;
begin
x:=ABS(x); y:=ABS(y);
If (x*y=0) then
   begin
      if x>y then
      begin
      PG:=x;
      end
      else
      PG:=y;
    end
    else
    begin
    R:=x mod y;
    while R>0 do
        begin
        x:=y;
        y:=r;
        r:=x mod y;
        end;
    PG:=y;
    end;
    PGCD:=PG;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION PPCM(x,y:longint):longint;
//--------------(*Renvoi le plus petit commun multiple de x et y*)--------------
begin
x:=ABS(x);
y:=ABS(y);
PPCM:=(x*y) div PGCD(x,y);
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Miroir(x:longint):longint;
//--------------(*Donne le miroir d'un nombre x (met le nombre √† l'envers)*)--------------
var s,h:longint;
begin
         if (x<>0) then
           begin
           s:=abs(x) div x;
           end
         else
           begin
           s:=1;
           end;
    x:=abs(x);
    h:=0;
  while x>0 do
  begin
  h:=(10*h)+(x mod 10);
  x:=x div 10;
  end;
Miroir:=s*h;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Produit_ch(x:longint):longint;
//--------------(*Calcule le Produit des chiffres composants x*)--------------
   var som,i:longint;
  begin
som:=1;
For i:=1 to NBpos(x) do
begin
som:=extpos(x,i,1)*som;
end;
Produit_ch:=som;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Decroissant(X:longint):longint;
//--------------(*Ordonne les chiffres de X du plus grand au plus petit*)--------------
 Var inter,usex,C:longint;
 Begin
 inter:=0;
 for C:=9 downto 0 do
 begin
  usex:=X;
  while (usex>0) do
  begin
  if ((usex mod 10)=C) then
  begin
  inter:=10*inter+C;
  end;
  usex:=(usex div 10);
  end;
  end;
Decroissant:=inter;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Distinct(N:longint):Boolean;
//--------------(*retourne TRUE si le nombres n'est compose que de chiffres distincts et FALSE dans le cas contraire*)--------------
Var Ch:longint; inter:boolean;
Begin
Inter:=true;
Ch:=0;
while (ch<10) and (Inter=True) do
begin
If Freq(Ch,N)>1 then
begin
inter:=False;
end;
Ch:=Ch+1;
end;
Distinct:=inter;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION max(n1,n2:longint):longint;
//----------(*nous donne le plus grand entre deux entier *)-----------
    begin
      if n1<n2 then max:=n2 else max:=n1;
    end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION min(n1,n2 : longint):longint;
//----------(*nous donne le plus petit entre deux entier *)-----------
    begin
      if n1 > n2 then min := n2 else min := n1  ;
    end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

function Add_base(n1,n2,b:longint):longint;
//-------------(*Nous calcule l'addition de deux nombre dans une base quelconque*)-------------
  var r,res,p,somme:longint;
begin
    r:=0;
    res:=0;
     for p:=1 to max(NBpos(n1),NBpos(n2))+1 do
        begin
          somme:=extpos(n1,p,1)+extpos(n2,p,1)+r;
          res:=(somme mod b)*puiss(10,p-1)+res;
          r:=somme div b ;
        end;
   Add_base:=res;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Verif(X1,X2:longint):boolean;
//------------(*Verifie si deux nombres sont compos√© de meme chiffres*)-----------------
Var ch:longint; inter:boolean;
Begin
X1:=abs(X1); X2:=abs(X2);
Inter:=true;
Ch:=0;
While(Ch<10) and (inter=true)do
begin
Inter:=(Freq(Ch,X1)=Freq(Ch,X2));
Ch:=Ch+1;
end;
Verif:=inter
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Min_ch(X:longint):longint;
//------------(*Renvoi le plus petit chiffre d'un nombre donn√© X*)------------
Var inter:longint;
Begin
Inter:=9 ; X:=abs(X);
repeat
if (X mod 10) < inter then
begin
inter:=X mod 10;
end;
X:=X div 10;
until X = 0;
Min_ch:=inter;
end;


//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION Max_ch (X:longint):longint;
//-----------(*Renvoi le plus grand chiffre d'un nombre donn√© X*)-----------
Var inter:longint;
Begin
Inter:=0 ; X:=abs(X);
while(X>0)do
begin
if(X mod 10)> inter then
begin
inter:=X mod 10;
end;
X:=X div 10;
end;
Max_ch:=inter;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

FUNCTION permutch (A,ch2,pos:longint):longint;
{**********************************************************}
{remplace le chiffre de la position "pos" par "ch2"}
{**********************************************************}
var  x, y, res:longint;
// {$i C:\PASCAL\MODULES\puiss.fon}
begin
x:= ch2*(puiss(10,pos-1)) + (A mod (puiss(10,pos-1)));
y:= A div (puiss(10,pos));
res:= y*(puiss(10,pos)) + x;
permutch:=res;
end;

//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------



//--------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------

function DecCirculaire (a:longint):longint;
{************************************************}
{faire le decalage circulaire d'un nombre N donnÇ}
{************************************************}
var pos, chiffre, nbr, res: longint;
    begin
    pos:= NBpos(a);
    extrsup(a, pos, chiffre,nbr);
    res:= nbr*10 + chiffre;
    DecCirculaire:=Res;
    end;

//---------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------

function code_gray (Ng:longint):longint;
{**********************************************}
{donne le nombre suivant Ng (avec le code Gray)}
{**********************************************}
var cpt, nb1, Nb, ch, a, res:longint;
begin
cpt:=0;
nb1:=freq(Ng,1);
if ((nb1 mod 2)=0) then
     begin
     ch:= Ng mod 10;
     if ch=1 then
         begin
         res:= permutch(Ng,0,1);
         end
     else
         begin
         res:=permutch(Ng,1,1);
         end;
     end
else
     begin
     Nb:=Ng;
     repeat
         a:= Nb mod 10;
         Nb:= Nb div 10;
         cpt:=cpt+1;
     until (a=1);
     ch:= extpos(Ng,cpt+1,1);
     if ch=1 then
         begin
         res:= permutch(Ng,0,cpt+1);
         end
     else
         begin
         res:=permutch(Ng,1,cpt+1);
         end;
     end;
code_gray:=res;
end;

//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------

function abondant(A:longint):boolean;
{*************************************************************************************}
{donne "true" si le nombre A est abondant et "false" si le nombre A n'est pas abondant}
{*************************************************************************************}
var cnd:boolean;
begin
cnd:=false;
if (Som_Div(A))>A then
   begin
   cnd:=true;
   end;
abondant:=cnd;
end;



//---------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------

function super_abondant (A:longint):boolean;
{******************************************************}
{Retourne 'TRUE' si A est super_abondant, 'FALSE' sinon}
{******************************************************}
var taux, taux1:real;
    i:longint;
    cnd:boolean;
begin
cnd:=true;
if abondant(A) then
begin
taux:=Som_Div(A)/A;
for i:=1 to A do
    begin
    if abondant(i) then
        begin
        taux1:=Som_Div(i)/i;
        if taux1 > taux then
           begin
           cnd:=false;
           end;
        end;
    end;
end
else cnd:=false;
super_abondant:=cnd;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

function ind_petit (t:Tab;a,b:longint):longint;
{*************************************************}
{Donne l'indice du plus petit element du tableau T}
{*************************************************}
var ind, petit,i:longint;
begin
petit:= T[a];
ind:=a;
for i:=(a+1) to b do
    begin
    if T[i]<petit then
        begin
        petit:= T[i];
        ind:=i;
        end;
    end;
ind_petit:=ind;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

function Nbelem (T:Tab; taille, val:longint):longint;
{******************************************************}
{Donne le nombre d'elements du tableau T equivaut a Val}
{******************************************************}
var i, cpt:longint;
begin
cpt:=0;
for i:=1 to taille do
    begin
    if (T[i]=val) then cpt:=cpt+1;
    end;
nbelem:=cpt;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

Function NbElemtPP(T:Tab; Taille, IndElem : longint): longint;
{*************************************************************************}
{donne le nombre d'elements plus petit que l'element de l'indice "IndElem"}
{*************************************************************************}
Var j, NbInf : longint;
Begin
j := 1;
NbInf := 0;
While j <= Taille do
        Begin
        if (T[j] < T[IndElem]) or ((T[IndElem]=T[j]) and (j<IndElem)) then NbInf := NbInf + 1;
        j := j + 1;
        End;
NbElemtPP := NbInf;
End;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

function fecondite (X:longint):longint;
{***********************}
{donne la fecondite de X}
{***********************}
var cpt:longint;
begin
cpt:=1;
//cas ou on a un nombre a un seul chiffre
while NBpos(X)=1 do
        begin
        if Nbpos(X)=1 then
                begin
                X:=X*2;
                cpt:=cpt+1;
                end;
        end;

//X possede (desormais) plus d'un chiffre
while produit_ch(X)<>0 do
        begin
        X:= X+ produit_ch(X);
        cpt:=cpt+1;
        end;
fecondite:=cpt;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

function ver_fibo (A:longint):boolean;
{****************************************************************}
{sort vrai quand A appartient a la suite de fibonacci, faux sinon}
{****************************************************************}
var j,f:longint;
    cnd:boolean;
begin
j:=1;
cnd:=false;
repeat
        f:= FiBo(j);
        j:=j+1;
until f>=A;
if f=A then
        begin
        cnd:=true;
        end;
ver_fibo:=cnd;
end;

//---------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------

function ch_centre (A:longint):boolean;
{****************************************************************************************************************}
{Sort "vrai" lorsque la partie centrale de A est composee des memes chiffres et sort "faux" dans le cas contraire}
{****************************************************************************************************************}
var cnd:boolean;
    ch1,ch2,ch3:longint;
begin
cnd:=false;
if NBPos(A) mod 2=0 then
        begin
        ch1:=extpos(A,NBpos(A) div 2,1);
        ch2:=extpos(A,NBpos(A) div 2 +1,1);
        if ch1=ch2 then
            cnd:=true;
        end;
if NBPos(A) mod 2 <>0 then
        begin
        ch1:=extpos(A,NBpos(A) div 2,1);
        ch2:=extpos(A,NBpos(A) div 2 +1,1);
        ch3:=extpos(A,NBpos(A) div 2 +2,1);
        if ((ch1=ch2) and (ch2=ch3)) then
            begin
            cnd:=true;
            end;
        end;
ch_centre:=cnd;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

function tab_egal (A,B:tab; taille1,taille2:longint):boolean;
{*********************************************************}
{Sort vrai si les tableaux A et B sont egaux et faux sinon}
{*********************************************************}
var i:longint;
    cnd:boolean;
begin
i:=1;
cnd:=true;
if taille1=taille2 then
        begin
        while (i<=taille1) and (cnd) do
                begin
                if A[i]<>B[i] then
                        begin
                        cnd:=false;
                        end;
                i:=i+1;
                end;
        end
else
        begin
        cnd:=false;
        end;
tab_egal:=cnd;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

function matrice_egal (A,B:matrice; lig1,lig2,col1,col2:longint):boolean;
{**********************************************************}
{Sort vrai si les matrices A et B sont egales et faux sinon}
{**********************************************************}
var i,j:longint;
    cnd:boolean;
begin
i:=1; //i represente l'indice des lignes
j:=1; //j represente l'indice des colonnes
cnd:=true;
if (lig1=lig2) and (col1=col2) then //on verifie que les deux matrices sont de memes dimensions
        begin
        while (i<=lig1) and (cnd) do
                begin
                while (j<=col1) and (cnd) do
                        begin
                        if A[i,j]<>B[i,j] then
                                begin
                                cnd:=false;
                                end;
                        j:=j+1;
                        end;
                j:=1; //on reinitialise l'indice des colonnes
                i:=i+1;
                end;
        end
else
        begin
        cnd:=false;
        end;
matrice_egal:=cnd;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------


procedure extrsup (A, pos:longint; var pch,res:longint);
{*********************************************************************************************************************}
{retourne en sortie le chiffre ayant la position "pos" et le supprime du nombre A et met dans res le nouveau nombre}
{*********************************************************************************************************************}
var ch, deg, cpt:longint;
    begin
    res:=0;
    cpt:=0;
    ch:=0;
    pch:=0;
    deg:=1;
    while (A<>0) do
        begin
        ch:= A mod 10;
        A:= A div 10;
        cpt:= cpt+1;
        if (cpt<>pos) then
           begin
           res:= res+ ch*deg;
           deg:=deg*10;
           end
        else
           begin
           pch:=ch;
           end;
        end;
    end;

//PRECEDURES TABLEAUX
     //TRIS

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

Procedure TriTrans(var tabTrans:Tab; TailTrans : longint);
{************************************************************}
{Trie les elements du tableau par la methode de transposition}
{************************************************************}
VAR i, j, ind : longint;
Begin
i := 1;
While  i <= TailTrans-1 do
  Begin
  If tabTrans[i] > tabTrans[i+1] then
    Begin
    Permut(tabTrans[i],tabTrans[i+1]);

    j := i;
    While (j > 1) and (tabTrans[j] < tabTrans[j-1]) do
        Begin
        permut(tabTrans[j],tabTrans[j-1]);

        j := j - 1;
        End
    End;
  i := i + 1;
  End;
End;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure tri_bulles (var T: Tab; taille:longint);
{******************************************************************}
{ordonne les elements du tableau T selon la methode de tri a bulles}
{******************************************************************}
var i:longint;
    cnd:boolean;
begin
repeat
   cnd:=true;
   for i:=1 to taille-1 do
       begin
       if T[i]>T[i+1] then
          begin
          permut(T[i],T[i+1]);
          cnd:=false;
          end;
       end;
until cnd=true;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure tri_3table (var T:Tab; taille:longint; var B:Tab);
{***********************************************************}
{trie les elements de T d'apres la methode de tri a 3 tables}
{***********************************************************}
var A:Tab;
    i, cpt, j, z:longint;
    cnd:boolean;
begin
//ETAPE1  creation du tableau de comptage
for i:= 1 to taille do
    begin
    j:=1;
    cpt:=0;
    while j<=taille do
        begin
        if (T[j]<T[i]) and (j<>i) then  cpt:=cpt+1;

        if (T[j]=T[i]) and (j<i) then
                 begin
                 cpt:=cpt+1;
                 end;

        j:=j+1;
        end;
        A[i]:=cpt;
    end;

//ETAPE2
for z:=1 to taille do
    begin
    B[A[z]+1]:=T[z];
    end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------



//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

Procedure Tri1table(var T:Tab; Taille : longint);
{****************************************************************}
{Trie les elements du tableau T selon la methode de tri a 1 table}
{****************************************************************}
VAR i, Indice, CptPermut : longint;
    Permutation : boolean;

Begin
CptPermut := 0;
Repeat
Permutation := false;
  i := 1;
  While i <= Taille do
        Begin
        Indice := NbElemtPP(T,Taille,i);
        // cette condition limite le nombre de permutations
        if ((i<Indice+1) and (T[i]>T[Indice+1])) or ((i>Indice+1) and (T[i]<T[Indice+1])) Then
                Begin
                Permut(T[i],T[Indice+1]);
                Permutation := true;
                End;
        i := i + 1;
        End;
Until Permutation = false;
End;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure tri_selec (var T:Tab;tai:longint);
{**********************************************************************}
{trie les elements d'un tableau T selon la methode de tri par selection}
{**********************************************************************}
var i:longint;
begin
for i:=1 to (tai-1) do
     begin
     permut(T[i],T[ind_petit(T,i,tai)]);
     end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------
     //AUTRES

procedure tab_comptage (T:Tab; taille:longint;var A:Tab);
{******************************************}
{Cree le tableau de comptage A du tableau T}
{******************************************}
var i,j,cpt:longint;

begin
for i:= 1 to taille do
    begin
    j:=1;
    cpt:=0;
    while j<=taille do
        begin
        if (T[j]<T[i]) and (j<>i) then  cpt:=cpt+1;

        if (T[j]=T[i]) and (j<i) then
                 begin
                 cpt:=cpt+1;
                 end;

        j:=j+1;
        end;
        A[i]:=cpt;
    end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure lect1d (var T:Tab; var taille:longint);
{*****************************************************************}
{Lit un tableau Ö une dimension dont les ÇlÇments sont des entiers}
{*****************************************************************}
var i:longint;
begin
write('donner la taille du tableau ');
readln(taille);
for i:=1 to taille do
     begin
     write('T[',i,']=');
     read(T[i]);
     end;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure ecrire1d ( T:Tab; tai:longint);
{*********************************************************************}
{affiche un tableau a une dimension dont les elements sont des entiers}
{*********************************************************************}
var i:longint;
begin
for i:=1 to tai do
   begin
   write(T[i],' , ');
   end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure alea1d (var T:Tab; taille:longint);
{************************************************************}
{Genere des nombres aleatoires et les range dans le tableau T}
{************************************************************}
var i:longint;
begin
randomize;
for i:=1 to taille do
    begin
    T[i]:=random(1000); //le nombre entre parentheses indique la valeur maximale generee
    end;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure copie_tab (T1:Tab;tail1:longint;var T2:Tab;var tail2:longint);
{**************************************}
{Copie le contenu du tableau T1 dans T2}
//les elements de T1 doivent etre des entiers
{**************************************}
var i:longint;
begin
tail2:=tail1;
i:=1;
while i<=tail1 do
    begin
    T2[i]:=T1[i];
    i:=i+1;
    end;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure permut (var A, B:longint);
//------------------------------
//permute les contenus de A et B
//------------------------------
var sauve:longint;
begin
sauve:=A;
A:=B;
B:=sauve;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

Procedure Lect2D(var T:matrice;var nblig,nbcol:longint);
(* ___________________________________________________________________________ *)
(* Lecture d'un tableau a deux dimensions de nblig lignes et de nbcol colonnes *)
(* --------------------------------------------------------------------------- *)
var i,j:longint;
Begin
write('Entrez le nombre de lignes de la matrice: ');
readln(NbLig);
write('Entrez le nombre de colonnes de la matrice: ');
readln(Nbcol);
for i:=1 to nblig Do
        Begin
        For j:=1 to nbcol Do
                Begin
                writeln('T[',i,',',j,']=');
                read(T[i,j]);
                End;
        End;
End;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

Procedure Ecrire2D(var T:matrice; Nblig,Nbcol:longint);
(* ______________________________________________________________________ *)
(* Affiche un tableau a deux dimensions de Nblig lignes et Nbcol colonnes *)
(* ---------------------------------------------------------------------- *)
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




//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------


procedure transposee_mat(A1:matrice;nbcol, nblig:longint; var A2:matrice);
{********************************************}
{Donne la matrice transposee de la matrice A1}
{********************************************}
var i,j:longint;
begin
for j:=1 to nblig do
        begin
        for i:=1 to nbcol do
                begin
                A2[i,j]:=A1[j,i];
                end;
        end;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure ver_fois_mat(vecteur:Tab; nbcol,nblig:longint;var T:matrice);
{**********************************************************************************************}
{Donne en sortie la matrice resultat de la multiplication de la matrice d'entree par le vecteur}
{**********************************************************************************************}
var i,j:longint;
begin
for i:=1 to nbcol do
        begin
        for j:=1 to nblig do
                begin
                T[i,j]:=T[i,j]*vecteur[j];
                end;
        end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure produit_mat(A,B:matrice;n,m,p:longint;var C:matrice);
{*************************************************}
{Donne la matrice produit des deux matrices A et B}
{*************************************************}
var j,i,ind,p1:longint;
begin
for j:=1 to n do
        begin
        for i:=1 to p do
                begin
                p1:=0;
                for ind:=1 to m do
                        begin
                        p1:= A[j,ind]*B[ind,i]+p1;
                        end;
                C[j,i]:=p1;
                end;
        end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------


procedure pp_pg_colonne(T:matrice; nblig,cd:longint;var pp,pg:longint);
{***************************************************************************************************************}
{Donne l'element le plus petit ainsi que l'element le plus grand de la colonne cd de al matrice entree}
{***************************************************************************************************************}
var j:longint;
begin
pp:=T[1,cd];
pg:=T[1,cd];
for j:=1 to nblig do
        begin
        if T[j,cd]<pp then
                begin
                pp:=T[j,cd];
                end;
        if T[j,cd]>pg then
                begin
                pg:=T[j,cd];
                end;
        end;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure pp_pg_ligne(T:matrice; nbcol,ld:longint;var pp,pg:longint);
{*************************************************************************************************************}
{Donne l'element le plus petit ainsi que l'element le plus grand de la ligne ld de al matrice entree}
{*************************************************************************************************************}
var i,elm:longint;
begin
pp:=T[ld,1];
pg:=T[ld,1];
for i:=1 to nbcol do
        begin
        if T[ld,i]<pp then
                begin
                pp:=T[ld,i];
                end;
        if T[ld,i]>pg then
                begin
                pg:=T[ld,i];
                end;
        end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure tab_min_colonne(T:matrice; lig,cl:longint;var T1:Tab);
{***********************************************************************************************}
{Donne un tableau a 1 dimension qui contient les elements les plus petits de toutes les colonnes}
{***********************************************************************************************}
var i,j,pp:longint;
begin
for i:=1 to cl do
        begin
        pp:=T[1,i];
        for j:=1 to lig do
                begin
                if T[j,i]<pp then
                        begin
                        pp:=T[j,i];
                        end;
                end;
        T1[i]:=pp;
        end;
end;


//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure add_mat (A,B:matrice;nblig,nbcol:longint;var R:matrice);
{**********************************************************************************************}
{Donne en sortie la matrice R qui represente le resultat de l'addition des deux matrices A et B}
{**********************************************************************************************}
var i,j:longint;
begin
i:=1; //i represente les lignes
j:=1; //j represente les colonnes
while i<=nblig do
        begin
        while j<=nbcol do
                begin
                R[i,j]:=A[i,j]+B[i,j];
                j:=j+1;
                end;
        j:=1;  //reinitialiser l'indice des colonnes
        i:=i+1;
        end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------

procedure entier_fois_mat (A:matrice;Nbcol,Nblig,Nfois:longint;var B:matrice);
{*********************************************************************************************************}
{Donne en sortie la matrice B qui est le resultat de la multiplication de la matrice A par le nombre Nfois}
{*********************************************************************************************************}
var i,j:longint;
begin
i:=1; //i represente l'indice des lignes
j:=1; //j represente l'indice des colonnes
while i<=Nblig do
        begin
        while j<=Nbcol do
                begin
                B[i,j]:=A[i,j]*Nfois;
                j:=j+1;
                end;
        j:=1; //on reinitialise l'indice des colonnes
        i:=i+1;
        end;
end;

//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------


BEGIN

END.


