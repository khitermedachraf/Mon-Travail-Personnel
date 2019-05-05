unit bib_MAMMA_OUANES;
interface
type tab= array [1..1000] of longint;
     tab2= array [1..1000,1..1000] of longint;
     tb2chain=array[1..1000,1..1000]of string ;
     tb2real=array[1..1000,1..1000]of real ;
      E=set of char ;





(*-------------------modules d'entiers---------------------------------------------------------------*)


       function Puiss(A,p:longInt):longInt ;
(* le module puiss_n calcule  la puissance p d'un nombre A------------------------------------------ *)
(* ------------------------------------------------------------------------------------------------- *)

        Function nb_pos(n:longint):longint;
(* le module Nb_Pos calcule le nombre de positions d'un nombre n ----------------------------------- *)
(* ------------------------------------------------------------------------------------------------- *)

          Function Freq_Ch(n,ch:longint):longint;
(* le modules Freq_Ch calcule la frequence d'apparition du chiffre ch dans n-------------------------*)
(* ------------------------------------------------------------------------------------------------- *)

          function som_ch ( x :longint):longint ;
(* le module som_ch calcule la somme des chiffre composant un entier D------------------------------ *)
(* ------------------------------------------------------------------------------------------------- *)

          function sommediv(X:longInt):longint;
(* le module sommediv calcule la somme des divisieurs d'un entier X -------------------------------- *)
(* ------------------------------------------------------------------------------------------------- *)

          function inv(X:longint):longint;
(* le module inv nous donne l'inverse(miroir) d'un nombre X par exemple le mirroir de 129 est 921--- *)
(* ------------------------------------------------------------------------------------------------- *)

           function concat(A,B:longInt):longInt;
(* le module concat concatene deux nombres A et B (a b)----------------------------------------------*)
(* --------------------------------------------------------------------------------------------------*)

          function conver_base_dec (x:longInt;base:longInt):longInt;
(* le module conver_base_dec convertit un nombre x de base "base" vers le decimal -------------------*)
(* ------------------------------------------------------------------------------------------------- *)

          function conver_dec_base ( A: longInt ; Base : longInt): longInt ;
(* le module CONVER_base convertit un nombre A ecrit du decimal  a une   base "base" ----------------*)
(* ------------------------------------------------------------------------------------------------- *)

          function distinct ( x : longint ):boolean ;
(* le module distinct verifie si les chiffres composant un nombre sont distincts --------------------*)
(* --------------------------------------------------------------------------------------------------*)

          function extrpos_g ( Y,k : longint):longint;
(* le module extrpos_g extrait k positions de Y a partir de la gauche -------------------------------*)
(* ------------------------------------------------------------------------------------------------- *)

           function extrpos_d (Y ,k:longInt):longint;
(* le module extrpos_d extrait k positions de Y a partir de la droite--------------------------------*)
(* ------------------------------------------------------------------------------------------------- *)

           function extrch (n,p:longint):longint;
(*le module extrch donne le chiffre se trouvant a la position p du nombre n a partir de la gauche----*)
(*---------------------------------------------------------------------------------------------------*)

           function pgcd (x,y :longint):longint;
(*le module pgcd donne le plus grand diviseur commun de x,y------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
           function ppcm (x,y :longint):longint;
(*le module ppcm donne le plus petit multiple commun de x,y------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function premier (x:longint):boolean;
(*le module premier verifie six est premier ou non---------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function facto (x:longint):longint;
(*le module facto calcule la factorielle de x (x!)---------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function produit_ch (x:longint):longint;
(*le module produit_ch calcule le produit des chiffres composant x-----------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function swapping (x:longint):longint;
(*le module swapping inverse les chiffres de poids fort et de poids faible de x----------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function croissant (x:longint):longint;
(*le module croissant ordonne les chiffres de x du plus petit au plus grand--------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function decroissant (x:longint):longint;
(*le module decroissant ordonne les chiffres de x du plus grand au plus petit------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function maxch (x:longint):longint;
(*le module max_ch renvoie le plus grand chiffre du nombre x-----------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function minch (x:longint):longint;
(*le module min_ch renvoie le plus petit chiffre du nombre x-----------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function verif_ch (x1,x2:longint):boolean;
(*le module verif_ch verifie si deux nombres sont compos‚s de meme chiffres--------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function ins_nb (nb,x,pos:longint):longint;
(*le module ins_nb insere un nombre nb dans x a partir de la position pos (a partir de la droite-----*)
(*---------------------------------------------------------------------------------------------------*)

          function delchf (chf, x:longint):longint;
(*le module delchf renvoie un nombre qui contient que les chiffres differents de ch------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function delpos (x,pos,k:longint):longint;
(*le module delpos retire de x a paritr de la position pos ,k chiffres-------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          function compose (nb,k:longint):longint;
(*le module compose compose un nombre qui est la repetition de nb, k fois----------------------------*)
(*---------------------------------------------------------------------------------------------------*)






(*--------------------------modules de tableaux------------------------------------------------------*)

          function ind_petit (t:tab;b1,b2:longint):longint;
(*Donne l'indice du plus petit element, compris entre les indices b1 et b2 du tableau t--------------*)
(*---------------------------------------------------------------------------------------------------*)

          function ind_grand (t:tab;a,b:longint):longint;
(*Renvoi l'indice du plus grand element situ‚ entre l'indice a et l'indice b du tableau t------------*)
(*---------------------------------------------------------------------------------------------------*)

          function nb_elem (t:tab;taille,val:longint):longint;
(*Donne le nombre d'elemets du tableau t egeaux a val------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          procedure lect2dalea (var t:tab2;var l,c:longint;a,b:longint);
(*Permet de remplir al‚atoirement un tableau t de deux dimensions de l lignes, c colonnes avec des---*)
(*elements compris entre a et b----------------------------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

         function col_minlig (t:tab2; lig,c:longint):longint;
(*Renvoi la colonne du plus petit element de la ligne lig d'un tableau t de deux dimensions de c-----*)
(*colonnes-------------------------------------------------------------------------------------------*)

         function col_maxlig (t:tab2;lig,c:longint):longint;
(*Renvoi la colonne du plus grand element de la ligne lig d'un tableau t de deux dimensions de c-----*)
(*colonne--------------------------------------------------------------------------------------------*)

         function mintab1d (t:tab;n:longint):longint;
(*Renvoi la valeur du plus petit element d'un tableau t de n elements--------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

         function maxtab1d (t:tab;n:longint):longint;
(*Renvoi la valeur du plus grand element d'un tableau t de n elements--------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

         function mintab2d (t:tab2;l,c:longint):longint;
(*Renvoi la valeur du plus petit element d'un tableau t de l lignes, c colonnes----------------------*)
(*---------------------------------------------------------------------------------------------------*)

         function maxtab2d (t:tab2;l,c:longint):longint;
(*Renvoi la valeur du plus grand element d'un tableau t de l lignes,c colonnes-----------------------*)
(*---------------------------------------------------------------------------------------------------*)

         function sommetab1d (t:tab;n:longint):longint;
(*Renvoi la somme de n elements d'un tableau t d'une dimension---------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

         function sommecol (t:tab2; l,col:longint):longint;
(*Renvoi la somme des elements de la colonne col d'un tableau t de deux dimensions de l lignes-------*)
(*---------------------------------------------------------------------------------------------------*)

         function sommelig (t:tab2;lig,c:longint):longint;
(*Renvoi la somme des elements de la ligne lig d'un tableau t de deux dimensions de c colonnes-------*)
(*---------------------------------------------------------------------------------------------------*)

         function comptinf (t:tab;n,v:longint):longint;
(*Renvoi le nombre d'elements strictement inferieurs a v d'un tableau t de n elements----------------*)
(*---------------------------------------------------------------------------------------------------*)

         function freqv1d (t:tab;n,v:longint):longint;
(*Renvoi la frequence d'apparition des elements identiques a v d'un tableau t de n elements----------*)
(*---------------------------------------------------------------------------------------------------*)
          procedure lect1D(var T:tab ;var taille :longint ) ;
(*permet de remplir un tableau a une dimension ------------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

          procedure ecrit1D ( var T:tab ; var taille : longint );
(* la procedure ecrit1D permet d'afficher un tableau T de taille ‚lements ---------------------------*)
(*---------------------------------------------------------------------------------------------------*)
          procedure affich1D ( var T:tab ; var taille : longint );
(*la procedure affiche un tableau t a une dimmension de taille elements d'une autre maniere ---------*)
(*---------------------------------------------------------------------------------------------------*)
          procedure permut ( var A , B : longint );
(* la procedure permut permet de permuter deux ‚lements A et B---------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
          procedure lect2D (var T:tab2 ; var l ,c : longint  );
(*la procedure lect2d permet de remplir un tableau T a 2 dimensions de l lignes et c colonnes -------*)
(*---------------------------------------------------------------------------------------------------*)
         procedure ecrit2D (var T:tab2 ; l,c :longint );
(*la procedure ecrit2D permet d'afficher un tableau T A 2 dimensions de l lignes et c colonnes-------*)
(*---------------------------------------------------------------------------------------------------*)
         procedure affich2d(var t:tab2 ;lig,col:longint );
(*affiche un tableau a 2 dimensions de lig lignes et col colonnes -----------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
         procedure lect1Dalea(var T:tab;var n :longint ;A,B:longint );
(*remplit un tableau a une dimension aleatoirement --------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
         procedure TriTrans(var tabTrans:Tab; TailTrans : longint);
(* tri un tableau a 2 dimension en utilisant le tri par transposition -------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
         procedure tri_bulles (var T:Tab; taille:longint);
(*tri un tableau a une dimension de taille elements par la methode du tri a bulles ------------------*)
(*---------------------------------------------------------------------------------------------------*)
         procedure tab_comptage (T:Tab; taille:longint;var A:Tab);
(* Construit la table de comptage A de la table T ---------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
            procedure tri_3table (var T:Tab; taille:longint; var B:Tab);
(*tri la table T de taille elements par la methode de tri par comptage  3 tables --------------------*)
(*---------------------------------------------------------------------------------------------------*)
            procedure lect2chain(var T:tb2chain; var l,c:longint ) ;
(*------remplit un tableau de chaines 2 dimensions --------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)

            procedure ecr2chain(var t : tb2chain ;lig,col:longint );
(*------affiche un tableau de chaines 2 dimensions --------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
            procedure lect2real(var T:tb2real; var l,c:longint ) ;
(*------remplit un tableau de reels 2 dimensions-----------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
            procedure ecr2real(var t : tb2real ;lig,col:longint );
(*------affiche un tableau de reels 2 dimensions ----------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)


(*-----------------------Modules chaines de caracteres ----------------------------------------------*)
              function freqchaine  (ch,chaine:string):longint ;
(*renvoie la frequence d'apparition de ch dans chaine -----------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
              function  separ(ch:char):boolean ;
(*la fonction separ renvoi vrai si le charactere ch est un s‚parateur faux sinon --------------------*)
(*---------------------------------------------------------------------------------------------------*)
              procedure delchaine (ch :string ; var S:string  ) ;
(*la procedure delchaine retire de  la chaine S toutes les chaines ch--------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
              procedure replace_ch(var s:string ; ch1,ch2:string );
(*remplace toutes les chaines ch1 de la chaine S par ch2---------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
              procedure invert_ch(S:string ; var invs:string );
(*renvoi la chaine (invs) inverse de s---------------------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
              procedure decal_chaine(var chaine: string ; k:longint );
(* effectue k decalages circulaires sur la chaine ---------------------------------------------------*)
(*---------------------------------------------------------------------------------------------------*)
              procedure gener_ch_alea ( p :longint ; var ch : string );
 (* genere une chaine de p caract‚res aleatoirement -------------------------------------------------*)


implementation

       function Puiss(A,p:longInt):longInt ;
var i,M :longInt;
  begin
       M:=1;
             for i:=1 to p do
                begin
                  M:=M*A;
                 end;
       puiss:=M;

  end;


function nb_pos (n:longint):longint;
var i:longint;
begin
n:= abs(n);
i:=1;
while ((n div 10) <> 0) do
begin
i:=i+1;
n:=n div 10;
end;
nb_pos:= i;
end;


    Function Freq_Ch(n,ch:longint):longint;

var
j : longint;
 begin
   j:=0;
    repeat
       if (n mod 10 = ch) then
            j:=j+1;
        n:=n div 10 ;
    until (n=0);
    Freq_Ch := j ;
 end;


function som_ch (x:longint):longint;
var inter :longint;
begin
inter:=0;
x:= abs(x);
while x>0 do
begin
inter:= inter+ x mod 10;
x:= x div 10;
end;
som_ch := inter;
end;

   function sommediv(X:longInt):longint;
     var S,d:longINt ;
        begin
           S:=1;
              for d:=2 to (X div 2) do

                       if(( X mod d )=0 ) then S:=S+d;

        sommediv:= S ;

end;


function inv (x:longint):longint;
var inter, signe : longint;
begin
if x<>0 then signe:= (abs(x) div x) else signe := 1;
x:= abs(x);
inter:= 0;
while x>0 do
begin
inter:= 10*inter +x mod 10;
x:= x div 10;
end;
inv := signe*inter;
end;

   function concat(A,B:longInt):longInt;

        begin
         concat:= A* Puiss(10,Nb_pos(B)) + B;
        end;


   function conver_base_dec (x:longInt;base:longInt):longInt;
  var p, dec : longInt;
    begin
      p:=1;
      dec:=0;
      repeat
        dec:= (x mod 10 )*p + dec ;
        p:= p* base ;
        x:=x div 10 ;
      until x=0;
    conver_base_dec :=dec;

    end;
    function conver_dec_base ( A: longInt ; Base : longInt): longInt ;
 var conver , p : longInt;
 begin
  p:=1;
  conver:=0;
  repeat
   conver:=(A mod Base ) *p + conver ;
   p:=p*10 ;
   A:=A div base ;
  until (A=0);
 conver_dec_base:=conver;
 end;


function distinct (x:longint):boolean;
var ch:longint;
   inter:boolean;

begin inter:= true;
ch := 0;
while ((ch<10) and inter ) do
begin
if freq_ch(x,ch)>1 then inter := false ;
ch := ch +1;
end;
distinct := inter ;
end;

            function extrpos_g ( Y,k : longint):longint;
    begin
       extrpos_g:= Y div ( Puiss(10,Nb_pos(Y)-k));

    end;


    function extrpos_d(Y ,k:longInt):longint;

    begin
       extrpos_d:= Y mod ( Puiss(10,k));

    end;


function extrch(n,p:longint):longint;
var a:longint;
begin
if (p<= nb_pos(n)) then extrch:=(n div puiss(10,nb_pos(n)-p)) mod 10 ;
end;


function pgcd (x,y:longint):longint;
var r:longint;
begin
x:= abs(x);
y:= abs(y);
if (x*y=0) then
begin
if x>=y then pgcd:=x
else pgcd := y;
end
else
begin
r:= x mod y;
while r>0 do
begin
x:= y;
y:= r;
r:= x mod y;
end;
pgcd:= y;
end;
end;


function ppcm (x,y:longint):longint;

begin
x:= abs(x);
y:= abs(y);
ppcm := (x*y) div pgcd(x,y);
end;


function premier (x:longint):boolean;
var i:longint;
    inter: boolean;
begin
if( x<=1)then inter:= false else inter:= true;
i:= 2;
while ((i<= (x div 2))and inter) do
begin
if (x mod i = 0) then inter := false;
i:=i+1;
end;
premier := inter;
end;



function facto(x:longint):longint;
var inter,i:longint;
begin
inter:= 1;
for i:=2 to x do inter:= inter*i;
facto := inter;
end;


function produit_ch (x:longint):longint;
var inter:longint;
begin
x:= abs(x);
if x=0 then inter:=0 else inter:=1;
while x>0 do
begin
inter:= inter*(x mod 10);
x:= x div 10;
end;
produit_ch:= inter;
end;



function swapping (x:longint):longint;
var pfaible, pfort, signe:longint;

begin
if x<>0 then signe:= (abs(x) div x) else signe :=1;
x:= abs(x);
pfort := extrch(x,1);
pfaible := x mod 10;
swapping := signe * (x+ ((pfaible - pfort)*(puiss(10,nb_pos(x)-1)-1)));
end;


function croissant (x:longint):longint;
var inter, usex,c :longint;
begin
inter:=0;
for c := 1 to 9 do
begin
usex:= x;
while usex > 0 do
begin
if (usex mod 10 = c) then inter:= 10*inter +c;
usex := usex div 10;
end;
end;
croissant := inter;
end;


function decroissant (x:longint):longint;
var inter, usex, c :longint;
begin
inter:=0;
for c :=9 downto 0 do
begin
usex:= x;
while usex > 0 do
begin
if (usex mod 10 = c) then inter:= 10*inter +c;
usex := usex div 10;
end;
end;
decroissant := inter;
end;


function maxch (x:longint):longint;
var inter:longint;
begin
inter := 0;
x:= abs(x);
while (x>0) do
begin
if (x mod 10)> inter then inter:= x mod 10;
x := x div 10;
end;
maxch:= inter;
end;


function minch (x:longint):longint;
var inter :longint;
begin
inter:= 9;
x := abs(x);
repeat
if ( x mod 10) < inter then inter:= x mod 10;
x:= x div 10;
until (x=0);
minch:= inter;
end;


function ins_nb(nb,x,pos:longint):longint;
var k:longint;
begin
k:= puiss(10,pos-1);
ins_nb :=(x mod k) + (nb*k)+ (x div k)*puiss(10,pos + nb_pos(nb) -1);
end;


function delchf(chf,x:longint):longint;
var k,inter:longint;
begin
inter:= 0;
k:=1;
while x>0 do
begin
if (x mod 10)<> chf then
begin
inter:= inter + k*(x mod 10);
k:= k*10;
end;
x:= x div 10;
end;
delchf:=inter;
end;



function delpos (x,pos,k:longint):longint;
var p:longint;

begin
p:= puiss(10, pos-1);
delpos := (x mod p) +(x div puiss(10, pos +k-1))*p;
end ;



function compose (nb,k:longint):longint;
var p:longint;

begin
p := puiss(10, nb_pos(nb));
compose := nb*((puiss(p,k)-1) div (p-1));
end ;


     function verif_ch( x1, x2 : longint ) : boolean ;
          var
           verif : boolean ;
           ch : longint;
            begin
              x1 := abs(x1) ;
              x2 := abs(x2) ;
              verif := true ;
              ch:=0;
              while(( ch<10) and (verif) )  do
                 begin
                   verif :=  (freq_ch (x1,ch) = freq_ch(x2,ch));
                   ch :=ch+1 ;
                 end;
              verif_ch:=verif;
   end;



function ind_petit(t:tab ; b1 , b2 : longint):longint;
var ind , petit ,i :longint;
begin
petit:= t[b1];
ind := b1;
for i:=b1 +1 to b2 do
begin
        if (t[i] < petit) then
        begin
         petit := t[i];
         ind := i;
        end;
end;
ind_petit:= ind;
end;



function ind_grand(t:tab;a,b:longint):longint;
var i,inter:longint;
begin
inter:=a;
for i:=(a+1) to b do
begin
if (t[i] > t[inter]) then inter:= i;
end;
ind_grand:= inter;
end;




function nb_elem(t:tab;taille,val:longint):longint;
var i,cpt:longint;
begin
cpt:= 0;
for i:= 1 to taille do
begin
   if t[i]= val then cpt:= cpt+1;
end;
nb_elem:= cpt;
end;


    procedure lect2dalea(var t:tab2; var l,c:longint; a,b:longint);
var i,j:longint;
begin
writeln('entrer le nombre de lignes,l= ');
readln(l);
writeln('entrer le nombre de colonnes ,c= ');
readln(c);
randomize;
for i:=1 to l do
        begin
         for j:=1 to c do
                t[i,j]:= (random(b-a+1)+a);
        end;
end;

     function col_minlig (t:tab2;lig,c:longint):longint;
var j:longint;
begin
col_minlig:=1;
for j:=2 to c do
begin
if (t[lig,j] < t[lig,col_minlig]) then
col_minlig:=j ;
end;
end;

function col_maxlig (t:tab2;lig,c:longint):longint;
var j:longint;
begin
col_maxlig:=1;
for j:=2 to c do
begin
if (t[lig,j] > t[lig,col_maxlig]) then
col_maxlig:=j ;
end;
end;



function mintab1d (t:tab;n:longint):longint;
var i,inter:longint;
begin
inter := t[1];
for i:=1 to n do
if ( inter > t[i] ) then inter:= t[i];
mintab1d:= inter;
end;



function maxtab1d (t:tab;n:longint):longint;
var i,inter:longint;
begin
inter := t[1];
for i:=1 to n do
if ( inter < t[i] ) then inter:= t[i];
maxtab1d:= inter;
end;





function mintab2d (t:tab2;l,c:longint):longint;
var i,j,inter:longint;
begin
inter := t[1,1];
for i:=1 to l do
for j:=1 to c do
if ( inter > t[i,j] ) then inter:= t[i,j];
mintab2d:= inter;
end;


function maxtab2d (t:tab2;l,c:longint):longint;
var i,j,inter:longint;
begin
inter := t[1,1];
for i:=1 to l do
for j:=1 to c do
if ( inter < t[i,j] ) then inter:= t[i,j];
maxtab2d:= inter;
end;



function sommetab1d (t:tab;n:longint):longint;
var i,inter:longint;
begin
inter := 0;
for i:=1 to n do inter:= inter + t[i];
sommetab1d:= inter;
end;



function sommecol (t:tab2;l,col:longint):longint;
var i,inter:longint;
begin
inter := 0;
for i:=1 to l do inter:= inter + t[i,col];
sommecol:= inter;
end;


function sommelig (t:tab2;lig,c:longint):longint;
var j,inter:longint;
begin
inter := 0;
for j:=1 to c do inter:= inter + t[lig,j];
sommelig:= inter;
end;


function comptinf (t:tab;n,v:longint):longint;
var i,inter : longint;
begin
inter:= 0;
for i:=1 to n do
if t[i] < v then inter := inter +1;
comptinf := inter;
end;


function freqv1d (t:tab;n,v:longint):longint;
var i,inter : longint;
begin
inter:= 0;
for i:=1 to n do
if t[i] = v then inter := inter +1;
freqv1d := inter;
end;

 procedure lect1D(var T:tab ;var taille :longint ) ;
     var  i   : longint ;
           begin
           writeln('introduisez la taille de votre tableau ');
              readln(taille);
                for i:=1 to taille do
                    begin
                       writeln ( 'T[',i,']');
                        readln(T[i])
                    end;
           end;
  procedure ecrit1D ( var T:tab ; var taille : longint );
       var i : longint ;
        begin
                for i:=1 to taille do
                        writeln('T[',i,'] =', T[i]);
        end;

 procedure affich1D ( var T:tab ; var taille : longint );
         var i : longint ;
          begin
                 for i:=1 to taille do
                        writeln(T[i]:7,'|' );
          end;
 procedure permut ( var A , B : longint );
          var x : longint ;
          begin
                 x:= A ;
                 A:= B ;
                 B:= x;
           end;

procedure lect2D (var T:tab2 ;var  l ,c : longint  );
 var i,j : longint ;
        begin
            writeln('Introuisez le nombre de lignes');
            readln(l);
            writeln('Introduisez le nombre de colonnes');
             readln(c);
                  for i:=1 to l do
                   begin
                     for j:=1 to c do
                        begin
                              writeln('T[',i,',',j,']=');

                              readln(T[i,j]) ;
                        end;
                   end;
          end;
 procedure ecrit2D (var T:tab2 ; l,c :longint );
           var  i , j : longint ;
            begin
               for i:=1 to l do
                         for j:=1 to c do
                            writeln('T[',i,',',j,']=', T[i,j]);
                            readln;
              end;
procedure affich2d(var t:tab2 ;lig,col:longint );
    var
    i,j :longint ;
    begin
     for i:=1 to lig do
        begin
         for j:=1 to col do
            begin
                if j=col then  writeln(t[i,j]:6,' | ')
                   else write(T[i,j]:6, ' | ');
             end;
         end;
     end;
 procedure lect1Dalea(var T:tab;var n :longint ;A,B:longint );
     var i:longint ;
     begin
     writeln('Introduisez la taille de votre tableau ');
     readln(n);
     randomize ;
     for i:=1 to n do T[i] := random (B-A+1)+A;
     end;

 Procedure TriTrans(var tabTrans:Tab; TailTrans : longint);
        var i, j, ind : longint;
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
                                  End;
                           End;
                  i := i + 1;
                   End;
         End;

procedure tri_bulles (var T:Tab; taille:longint);
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

procedure tab_comptage (T:Tab; taille:longint;var A:Tab);
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

procedure tri_3table (var T:Tab; taille:longint; var B:Tab);

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


procedure lect2chain(var T:tb2chain; var l,c:longint ) ;
var
 i,j : longint ;
begin
        writeln('donnez le nombre de lignes:');
        readln(l);
        writeln('donnez le nombre de colonnes:') ;
        readln(c);
        for i := 1 to l do
                for j:=1 to c do
                       begin
                        writeln('T[',i,',',j,']=')  ;
                        readln(T[i,j]);
                       end;
end;


procedure ecr2chain(var t : tb2chain ;lig,col:longint );
var
 i ,j :longint ;
begin
 for i :=1 to lig do
    begin
        for j:=1 to col do
             begin
                if j=col then writeln(T[i,j]:25 ,' | ')
                else write(T[i,j]:25,' | ');
             end;
    end ;
end ;


procedure lect2real(var T:tb2real; var l,c:longint ) ;
var
i,j : longint ;
begin
        writeln('donnez le nombre de lignes:');
        readln(l);
        writeln('donnez le nombre de colonnes:') ;
        readln(c);
        for i := 1 to l do
                for j:=1 to c do
                       begin
                        writeln('T[',i,',',j,']=')  ;
                        readln(T[i,j]);
                       end;
end;


 procedure ecr2real(var t : tb2real ;lig,col:longint );
var
 i ,j :longint ;
begin
 for i :=1 to lig do
    begin
       for j:=1 to col do
           begin
              if j=col then writeln(T[i,j]:7 ,' | ')
              else write(T[i,j]:7,' | ');
           end;
    end ;
end ;

 function freqchaine  (ch,chaine:string):longint ;
var i :longint ;
begin
freqchaine := 0;
for i:=1 to (length(chaine)-length(ch)+1) do
 if copy(chaine,i,length(ch))=ch then freqchaine := freqchaine +1;
end;

 function  separ(ch:char):boolean ;
            var D:E;
           begin
            D:=[' ',',',';','?','!','.',':','(',')','"'];
            separ:= ch in D  ;
           end;
  procedure delchaine (ch :string ; var S:string  ) ;
    var i:longint ;
    begin
    i:=1 ;
        while i<=length(s)-length(ch)+1 do
          begin
                if copy(S,i,length(ch)) = ch then
                 begin
                         delete (S,i,length(ch)) ;
                         i:=i-1;
                 end;
                 i:= i+1 ;
         end;
    end;
        procedure replace_ch(var s:string ; ch1,ch2:string );
        var i:longint ;
        begin
        i:=1;
                while i<=length(S)-length(ch1)+1 do
                if copy(S,i,length(ch1))=ch1 then
                        begin
                                delete(s,i,length(ch1));
                                insert(ch2,s,i);
                        end
                         else
                          i:=i+1 ;
                          end;
procedure invert_ch(S:string ; var invs:string );
   var i:longint ;
   begin
        invs:='';
                for i:=1 to length(s) do
                    invs:= s[i]+invs ;
   end;

   procedure decal_chaine(var chaine: string ; k:longint );
  var inter: string  ;
      i , n :longint ;
  begin
  k:=k mod( length(chaine)) ;
  for i:=1 to length(chaine)do
       begin
         n := length(chaine);
        inter[(i+k) mod n]:=chaine[i];

     end;
     inter[length(chaine)]:= chaine [length(chaine)-k] ;
     for i:=1 to length(chaine) do
     begin
         chaine[i]:= inter[i];
    end;
  end;
       procedure gener_ch_alea ( p :longint ; var ch : string );
    var i :longint ;
        c :longint  ;
    begin
      ch:='';
      randomize;
      for i:=1 to p do
      begin
         c:= random(26)+65 ;
         ch := ch + char(c) ;
      end;
    end;










begin

end.
