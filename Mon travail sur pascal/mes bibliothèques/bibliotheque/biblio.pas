Unit BiblioBMA;

Interface
Type Tab=Array[1..1000,1..1000]of longint;

//*************************************************************************** Les Fonctions ***************************************************************************//

{1}     Function PUISS(x,y:longint):longint;    (* La fonction PUISS nous calcule a puissance b *)
{2}     Function NbPos(n:longint):longint;      (* La fonction NbPos nous donne le nombre de positions d''un nombre *)
{3}     Function Facto(x:integer):longint;      (* La fonction Facto nous calcule la factorielle d'un nombre *)
{4}     Function Fibo(u0,u1,N:integer):longint; (* La fonction Fibo nous calcule le Nieme element de la suite de Fibonacci *)
{5}     Function FreqCh(x,y:longint):integer;   (* La fonction FreqCh nous donne la frequence d'aparition d'un chiffre y dans un nombre x *)
{6}     Function NbPrem(n:longint):boolean;     (* La fonction NbPrem nous determine si un nombre est premier *)
{7}     Function Mirror(n:longint):longint;     (* La fonction Mirror permet d'inverser un nombre,exemple: Mirror(123)=321 *)
{8}     Function BtoDec(n,b:longint):longint;   (* La fonction BtoDec permet de convertir un nombre d'une base b … la base 10 *)
{9}     Function DecToB(n:longint; b:integer):longint;   (* La fonction DecToB convertir un nombre ‚crit en base 10 vers une base b *)
{10}    Function B1toB2(n:longint; b1,b2:integer):longint;   (* La fonction B1toB2 convertit un nombre d'une base b1 vers une base b2 *)
{11}    Function Concat(a,b:integer):longint;   (* La fonction Concat permet de concatener deux nombres *)
{12}    Function NbPerf(n:longint):boolean;     (* La fonction NbPerf nous determine si un nombre est parfait *)
{13}    Function HighBit(n:longint):integer;    (* La fonction HighBit nous donne le chiffre plus … gauche d'un nombre *)
{14}    Function Extract(n:longint; npos,nextp:integer):integer;   (* La fonction Extract nous extrait Nextp positions … partir de la position npos d'un nombre *)
{15}    Function Distinct(n:longint):boolean;   (* La fonction Distinct donne vrai si le nombre n est compos‚ de chiffres distincts *)
{16}    Function Del0(n:longint):longint;       (* La fonction Del0 supprime les 0 d'un nombre n *)
{17}    Function Compose(nb,k:longint):longint; (* La fonction Compose permet de r‚p‚ter n, k fois *)
{18}    Function DelNb(n:longint; k:word):longint;   (* La fonction DelNb supprime le nombre k d'un nombre n *)
{19}    Function WhichBase(A,B:longint):integer;     (* La fonction WhichBase nous donne la base dans laquelle est ‚crit A,en lui donnant son ‚quivalent B en base 10 *)
{20}    Function MaxCh(N:longint):integer;      (* La fonction MaxCh nous donne le plus grand chiffre dans un nombre n *)
{21}    Function MinCh(n:longint):integer;      (* La fonction MinCh nous donne le plus petit chiffre dans n *)
{22}    Function NbSame(n1,n2:longint):boolean;      (* La fonction NbSame nous donne Vrai si n1 et n2 sont compos‚s des mˆmes chiffres distincts *)
{23}    Function DelPos(n:longint; x,pos:integer):longint;    (* La fonction DelPos retire un nombre x de chiffres de n … partir de la position pos *)
{24}    Function InsNb(n,x:longint; pos:integer):longint;     (* La fonction InsNb nous permet d'ins‚rer un nombre x dans n … droite de la position pos *)
{25}    Function PGCD(x,y:longint):longint;     (* La fonction PGCD nous calcule le PGCD(x,y) *)
{26}    Function PPCM(x,y:longint):longint;     (* La fonction PPCM nous donne PPCM(x,y) *)
{27}    Function SumCh(n:longint):longint;      (* La fonction SumCh nous calcule la somme des chiffres composant N *)
{28}    Function ProdCh(n:longint):longint;     (* La fonction ProdCh nous calcule le produit des chiffres composant N *)
{29}    Function Swapping(n:longint):longint;   (* La fonction Swapping inverse le poids fort de N avec son poids faible *)
{30}    Function Croiss(n:longint):longint;     (* La fonction Croiss r‚ordonne les chiffres composant N par ordre croissant *)
{31}    Function Decroiss(n:longint):longint;   (* La fonction Decroiss r‚ordonne les chiffres composant n par ordre d‚croissant *)
{32}    Function DecalD(n,k:longint):longint;   (* La fonction DecalD effecute k d‚calages circulaires vers la droite de n *)
{33}    Function DecalG(n,k:longint):longint;   (* La fonction DecalG effectue k d‚calages circulaires vers la gauche de n *)
{34}    Function Automorph(n:longint):boolean;  (* La fonction Automorph nous donne Vrai si un nombre n est automorphe *)
{35}    Function Chifimp(n:longint):boolean;    (* La fonction Chifimp nous donne Vrai si un nombre n est compos‚ que de chiffres impairs *)
{36}    Function NbElem(T:Array of longint; Taille,Val:integer):integer;   (* La fonction NbElem nous donne le nombre d'‚l‚ments Val pr‚sents dans le tableau *)
{37}    Function NbElemSup(T:Array of longint; Taille,Val:integer):integer;   (* La fonction NbElemSup nous donne le nombre d'‚l‚ments sup‚rieurs … Val *)
{38}    Function NbElemInf(T:Array of longint; Taille,Val:integer):integer;   (* La fonction NbElemInf nous donne le nombre d'‚l‚ments inf‚rieurs … Val *)
{39}    Function Frere(A,B:longint):boolean;    (* La fonction Frere donne vrai si A et B sont deux entiers fr‚res *)
{40}    Function Palin(ph:string):boolean;      (* La fonction Palin donne vrai si nous avons affaire … un palindrome *)
{41}
{42}
{43}
{44}
{45}

//=====================================================================================================================================================================//

//*************************************************************************** Les Proc‚dures **************************************************************************//

{1}     Procedure EcriT1D(var T:Array of longint;Taille:longint);      (* La proc‚dure EcriT1D nous affiche un tableau *)
{2}     Procedure LecT1D(var T:Array of longint;var taille:longint);   (* La proc‚dure LecT1D  nous permet de cr‚er un tableau *)
{3}     Procedure Permut(Var A,B:longint);  (* La proc‚dure Permut nous permute deux nombres A et B *)
{4}     Procedure Kaprekar(n:longint;var  p1,p2:longint; var  kapr:boolean);  (* La proc‚dure Kaprekar donne vrai si un nombre est kaprepar *)
{5}     Procedure TriBulles(var T:Array of longint;Taille:longint);     (* La proc‚dure TriBulles effectue un tri Bulles *)
{6}     Procedure Tri1Table(var T:Array of longint; Taille:longint);    (* La prod‚dure Tri1Table effectue un tri … une table *)
{7}     Procedure LecT2D(var T:Tab;var nblig,nbcol:longint);      (* La proc‚dure LecT2D nous permet de cr‚er une matrice *)
{8}     Procedure EcriT2D(var T:Tab; Nblig,Nbcol:longint);       (* La proc‚dure EcriT2D nous affiche une matrice *)
{9}     Procedure TransMat(var T:Tab; m,n:longint;var Ta:Tab);   (* La proc‚dure TransMat nous donne la matrice transpos‚e *)
{10}

//=====================================================================================================================================================================//

Implementation

//**************************************** Les Fonctions ****************************************//

{1.  ----------------------------------------------------------------------------------------------}

Function PUISS(x,y:longint):longint;
(* ____________________________________________ *)
(* La fonction PUISS nous calcule a puissance b *)
(* -------------------------------------------- *)
var F,i:longint;
BEGIN
F:=1;
For i:=1 To y Do
        Begin
        F:=F*x;
        End;
PUISS:=F;
END;

{2.  ----------------------------------------------------------------------------------------------}

Function NbPos(n:longint):longint;
(* ________________________________________________________________ *)
(* La fonction NbPos nous donne le nombre de positions d''un nombre *)
(* ---------------------------------------------------------------- *)
var i:longint;
Begin
i:=1;
While n div 10 <> 0 Do
        Begin
        i:=i+1;
        n:=n div 10;
        End;
NbPos:=i;
End;

{3.  ----------------------------------------------------------------------------------------------}

Function Facto(x:integer):longint;
(* _________________________________________________________ *)
(* La fonction Facto nous calcule la factorielle d'un nombre *)
(* --------------------------------------------------------- *)
var F,i:integer;
Begin
F:=1;
For i:=2 to x Do
        Begin
        F:=F*i;
        End;
Facto:=F;
End;

{4.  ----------------------------------------------------------------------------------------------}

Function Fibo(u0,u1,N:integer):longint;
(* _______________________________________________________________________ *)
(* La fonction Fibo nous calcule le Nieme element de la suite de Fibonacci *)
(* ----------------------------------------------------------------------- *)
var der,avder,i,v:longint;
BEGIN
avder:=u0;
der:=u1;
        FOR i:=3 TO  N  DO
                BEGIN
                v:=avder+der;
                avder:=der;
                der:=v;
                END;
Fibo:=v;
END;

{5.  ----------------------------------------------------------------------------------------------}

Function FreqCh(x,y:longint):integer;
(* ______________________________________________________________________________________ *)
(* La fonction FreqCh nous donne la frequence d'aparition d'un chiffre y dans un nombre x *)
(* -------------------------------------------------------------------------------------- *)
var frq,i:integer;
Begin
frq:=0;
For i:=1 To NbPos(x) Do
        Begin
        If (x mod 10=y) or (x mod 10=-y) Then frq:=frq+1;
        x:=x div 10;
        End;
FreqCh:=frq;
End;

{6.  ----------------------------------------------------------------------------------------------}

Function NbPrem(n:longint):boolean;
(* __________________________________________________________ *)
(* La fonction NbPrem nous determine si un nombre est premier *)
(* ---------------------------------------------------------- *)
var i,r,nbdiv:longint; k:boolean;
begin
k:=False;
nbdiv:=0;
for i:=1 to n div 2 do
        begin
        if n mod i =0 then
        nbdiv:=nbdiv+1;
        end;
if nbdiv=1 then  k:=True else k:=False;
NbPrem:=k;
End;

{7.  ----------------------------------------------------------------------------------------------}

Function Mirror(n:longint):longint;
(* _______________________________________________________________________ *)
(* La fonction Mirror permet d'inverser un nombre,exemple: Mirror(123)=321 *)
(* ----------------------------------------------------------------------- *)
var s:longint;
Begin
s:=0;
        Repeat
                s:=(s*10)+(n mod 10);
                n:=n div 10;
        Until n=0;
Mirror:=s;
End;

{8.  ----------------------------------------------------------------------------------------------}

Function BtoDec(n,b:longint):longint;
(* __________________________________________________________________________ *)
(* La fonction BtoDec permet de convertir un nombre d'une base b … la base 10 *)
(* -------------------------------------------------------------------------- *)
var p,i,ndec:longint;
BEGIN
ndec:=0;
        For p:=0 to NbPos(n)-1 Do
                Begin
                ndec:=ndec+(n mod 10)*PUISS(b,p);
                n:=n div 10;
                End;
BtoDec:=ndec;
END;

{9.  ----------------------------------------------------------------------------------------------}

Function DecToB(n:longint; b:integer):longint;
(* _______________________________________________________________________ *)
(* La fonction DecToB convertir un nombre ‚crit en base 10 vers une base b *)
(* ----------------------------------------------------------------------- *)
var i:integer; nb:longint;
Begin
i:=0;
nb:=0;
        Repeat
                nb:=nb+(n mod b)*PUISS(10,i);
                i:=i+1;
                n:=n div b;
        Until n=0;
DecToB:=nb;
End;

{10. ----------------------------------------------------------------------------------------------}

Function B1toB2(n:longint; b1,b2:integer):longint;
(* --------------------------------------------------------------------- *)
(* La fonction B1toB2 convertit un nombre d'une base b1 vers une base b2 *)
(* --------------------------------------------------------------------- *)
var nb1dec,nb2:longint;
Begin
nb1dec:=BtoDec(n,b1);
nb2:=DecToB(nb1dec,b2);
B1toB2:=nb2;
End;

{11. ----------------------------------------------------------------------------------------------}

Function Concat(a,b:integer):longint;
(* ____________________________________________________ *)
(* La fonction Concat permet de concatener deux nombres *)
(* ---------------------------------------------------- *)
Begin
Concat:=a*PUISS(10,NbPos(b))+b;
End;

{12. ----------------------------------------------------------------------------------------------}

Function NbPerf(n:longint):boolean;
(* __________________________________________________________ *)
(* La fonction NbPerf nous determine si un nombre est parfait *)
(* ---------------------------------------------------------- *)
var p,i,a:longint; k:boolean;
Begin
k:=False;
For p:=1 To n do
        Begin
        a:=0;
                For i:=1 to p div 2 do
                Begin
                        if (p mod i)=0 then
                        a:=i+a;
                End;
                End;
if a=p then k:=True else k:=False;
NbPerf:=k;
End;

{13. ----------------------------------------------------------------------------------------------}

Function HighBit(n:longint):integer;
(* ___________________________________________________________________ *)
(* La fonction HighBit nous donne le chiffre plus … gauche d'un nombre *)
(* ------------------------------------------------------------------- *)
var hb:integer;
Begin
hb:=n div PUISS(10,NbPos(n)-1);
HighBit:=hb;
End;

{14. ----------------------------------------------------------------------------------------------}

Function Extract(n:longint; npos,nextp:integer):integer;
(* _________________________________________________________________________________________ *)
(* La fonction Extract nous extrait Nextp positions … partir de la position npos d'un nombre *)
(* ----------------------------------------------------------------------------------------- *)
var extd,next:integer;
Begin
If npos>NbPos(n) Then
        next:=0
else
        Begin
        extd:=n div PUISS(10,npos-1);
        next:=extd mod PUISS(10,nextp);
        End;
Extract:=next;
End;

{15. ----------------------------------------------------------------------------------------------}

Function Distinct(n:longint):boolean;
(* ________________________________________________________________________________ *)
(* La fonction Distinct donne vrai si le nombre n est compos‚ de chiffres distincts *)
(* -------------------------------------------------------------------------------- *)
var i:integer; dstc:boolean;
Begin
dstc:=True;
For i:=0 to 9 Do
        Begin
        If FreqCh(n,i)>1 Then dstc:=False
        End;
Distinct:=dstc;
End;

{16. ----------------------------------------------------------------------------------------------}

Function Del0(n:longint):longint;
(* _____________________________________________ *)
(* La fonction Del0 supprime les 0 d'un nombre n *)
(* --------------------------------------------- *)
var m,i:longint;
Begin
m:=0;
i:=0;
repeat
        if n mod 10<>0 then
                begin
                m:=m+(n mod 10)*puiss(10,i);
                i:=i+1;
                end;
        n:= n div 10;
until n=0;
Del0:=m;
End;



{17. ----------------------------------------------------------------------------------------------}

Function Compose(nb,k:longint):longint;
(* _______________________________________________ *)
(* La fonction Compose permet de r‚p‚ter n, k fois *)
(* ----------------------------------------------- *)
var p:longint;
Begin
p:=PUISS(10,NbPos(nb));
Compose:=nb*((PUISS(p,k)-1) div (p-1));
End;

{18. ----------------------------------------------------------------------------------------------}

Function DelNb(n:longint; k:word):longint;
(* ____________________________________________________ *)
(* La fonction DelNb supprime le nombre k d'un nombre n *)
(* ---------------------------------------------------- *)
var m,i:longint;
Begin
m:=0;
i:=0;
repeat
        if n mod 10<>k then
                begin
                m:=m+(n mod 10)*puiss(10,i);
                i:=i+1;
                end;
        n:= n div 10;
until n=0;
DelNb:=m;
End;

{19. ----------------------------------------------------------------------------------------------}

Function WhichBase(A,B:longint):integer;
(* _____________________________________________________________________________________________________________ *)
(* La fonction WhichBase nous donne la base dans laquelle est ‚crit A,en lui donnant son ‚quivalent B en base 10 *)
(* ------------------------------------------------------------------------------------------------------------- *)
var bx:integer; Ax:longint;
Begin
bx:=10;
Repeat
bx:=bx-1;
Ax:=DecToB(B,bx);
Until (Ax=A);
WhichBase:=bx;
End;

{20. ----------------------------------------------------------------------------------------------}

Function MaxCh(N:longint):integer;
(* ___________________________________________________________________ *)
(* La fonction MaxCh nous donne le plus grand chiffre dans un nombre n *)
(* ------------------------------------------------------------------- *)
var inter:integer;
Begin
inter:=0;
n:=Abs(n);
While n>0 Do
        Begin
        If n mod 10>inter Then inter:=n mod 10;
        n:=n div 10;
        End;
MaxCh:=inter;
End;

{21. ----------------------------------------------------------------------------------------------}

Function MinCh(n:longint):integer;
(* _________________________________________________________ *)
(* La fonction MinCh nous donne le plus petit chiffre dans n *)
(* --------------------------------------------------------- *)
var inter:integer;
Begin
inter:=9;
n:=Abs(n);
Repeat
If n mod 10 < inter Then inter:=n mod 10;
n:=n div 10;
Until n=0;
MinCh:=inter;
End;

{22. ----------------------------------------------------------------------------------------------}

Function NbSame(n1,n2:longint):boolean;
(* _________________________________________________________________________________________ *)
(* La fonction NbSame nous donne Vrai si n1 et n2 sont compos‚s des mˆmes chiffres distincts *)
(* ----------------------------------------------------------------------------------------- *)
var Ch:integer; inter:boolean;
Begin
n1:=Abs(n1);
n2:=Abs(n2);
inter:=True;
Ch:=0;
While (Ch<10) and inter Do
        Begin
        Inter:=(FreqCh(n1,Ch)=FreqCh(n2,Ch));
        Ch:=Ch+1;
        End;
NbSame:=inter;
End;

{23. ----------------------------------------------------------------------------------------------}

Function DelPos(n:longint; x,pos:integer):longint;
(* __________________________________________________________________________________ *)
(* La fonction DelPos retire un nombre x de chiffres de n … partir de la position pos *)
(* ---------------------------------------------------------------------------------- *)
var p:integer;
Begin
p:=PUISS(10,pos-1);
DelPos:=(n mod p)+(n div PUISS(10,pos+x-1))*p;
End;

{24. ----------------------------------------------------------------------------------------------}

Function InsNb(n,x:longint; pos:integer):longint;
(* ______________________________________________________________________________________ *)
(* La fonction InsNb nous permet d'ins‚rer un nombre x dans n … droite de la position pos *)
(* -------------------------------------------------------------------------------------- *)
var k:integer;
Begin
k:=PUISS(10,pos-1);
InsNb:=(n mod k)+(x*k)+(n div k)*PUISS(10,pos+NbPos(x)-1);
End;

{25. ----------------------------------------------------------------------------------------------}

Function PGCD(x,y:longint):longint;
(* __________________________________________ *)
(* La fonction PGCD nous calcule le PGCD(x,y) *)
(* ------------------------------------------ *)
var r:integer;
Begin
x:=Abs(x);
y:=Abs(y);
If x*y=0 Then
        Begin
        if x>=y Then PGCD:=x else PGCD:=y;
        End
Else
        Begin
        r:=x mod y;
        while r>0 Do
                Begin
                x:=y;
                y:=r;
                r:=x mod y;
                End;
                PGCD:=y;
        End;
End;

{26. ----------------------------------------------------------------------------------------------}

Function PPCM(x,y:longint):longint;
(* _____________________________________ *)
(* La fonction PPCM nous donne PPCM(x,y) *)
(* ------------------------------------- *)
var multx,multy:longint;
Begin
x:=abs(x);
y:=abs(y);
multx:=x;
multy:=y;
While multx <> multy Do
        Begin
        If multx > multy Then multy:=multy+y else multx:=multx+x;
        End;
PPCM:=multx;
End;


{27. ----------------------------------------------------------------------------------------------}

Function SumCh(n:longint):longint;
(* ________________________________________________________________ *)
(* La fonction SumCh nous calcule la somme des chiffres composant N *)
(* ---------------------------------------------------------------- *)
var sum:longint;
Begin
sum:=0;
n:=abs(n);
while n>0 Do
        Begin
        sum:=sum+n mod 10;
        n:=n div 10;
        End;
SumCh:=sum;
End;

{28. ----------------------------------------------------------------------------------------------}

Function ProdCh(n:longint):longint;
(* ___________________________________________________________________ *)
(* La fonction ProdCh nous calcule le produit des chiffres composant N *)
(* ------------------------------------------------------------------- *)
var prod:longint;
Begin
n:=abs(n);
If n=0 Then prod:=0 else prod:=1;
While n>0 Do
        Begin
        prod:=prod*(n mod 10);
        n:=n div 10;
        End;
ProdCh:=prod;
End;


{29. ----------------------------------------------------------------------------------------------}

Function Swapping(n:longint):longint;
(* _____________________________________________________________________ *)
(* La fonction Swapping inverse le poids fort de N avec son poids faible *)
(* --------------------------------------------------------------------- *)
var hbit,lbit,signe:integer;
Begin
If n<>0 Then signe:=abs(n) div n else signe:=1;
n:=abs(n);
hbit:=Extract(n,NbPos(n),1);
lbit:=n mod 10;
Swapping:=signe*(n+((lbit-hbit)*(PUISS(10,NbPos(n)-1)-1)));
End;


{30. ----------------------------------------------------------------------------------------------}

Function Croiss(n:longint):longint;
(* _________________________________________________________________________ *)
(* La fonction Croiss r‚ordonne les chiffres composant N par ordre croissant *)
(* ------------------------------------------------------------------------- *)
var reord,x:longint; i:integer;
Begin
reord:=0;
For i:=1 to 9 Do
        Begin
        x:=n;
        While x>0 Do
                Begin
                If x mod 10=i then reord:=10*reord+i;
                x:=x div 10;
                End;
        End;
Croiss:=reord;
End;

{31. ----------------------------------------------------------------------------------------------}

Function Decroiss(n:longint):longint;
(* _____________________________________________________________________________ *)
(* La fonction Decroiss r‚ordonne les chiffres composant n par ordre d‚croissant *)
(* ----------------------------------------------------------------------------- *)
var reord,x:longint; i:integer;
Begin
reord:=0;
For i:=9 Downto 0 Do
        Begin
        x:=n;
        while x>0 Do
                Begin
                If x mod 10=i Then reord:=reord*10+i;
                x:=x div 10;
                End;
        End;
Decroiss:=reord;
End;

{32. ----------------------------------------------------------------------------------------------}

Function DecalD(n,k:longint):longint;
(* _______________________________________________________________________ *)
(* La fonction DecalD effecute k d‚calages circulaires vers la droite de n *)
(* ----------------------------------------------------------------------- *)
var i:longint;
Begin
For i:=1 to k Do
        Begin
        DecalD:=n div 10 +(n mod 10)*PUISS(10,NbPos(n)-1);
        n:=DecalD;
        End;
End;

{33. ----------------------------------------------------------------------------------------------}

Function DecalG(n,k:longint):longint;
(* _______________________________________________________________________ *)
(* La fonction DecalG effectue k d‚calages circulaires vers la gauche de n *)
(* ----------------------------------------------------------------------- *)
var i:longint;
Begin
For i:=1 to k Do
        Begin
        DecalG:=10*(n mod PUISS(10,NbPos(n)-1))+n div PUISS(10,NbPos(n)-1);
        n:=DecalG;
        End;
End;


{34. ----------------------------------------------------------------------------------------------}

Function Automorph(n:longint):boolean;
(* ___________________________________________________________________ *)
(* La fonction Automorph nous donne Vrai si un nombre n est automorphe *)
(* ------------------------------------------------------------------- *)
var p:longint;
BEGIN
p:=n*n;
Automorph:=(p mod PUISS(10,NbPos(n)))=n;
End;

{35. ----------------------------------------------------------------------------------------------}

Function Chifimp(n:longint):boolean;
(* ________________________________________________________________________________________ *)
(* La fonction Chifimp nous donne Vrai si un nombre n n'est compos‚ que de chiffres impairs *)
(* ---------------------------------------------------------------------------------------- *)
var i:integer;
BEGIN
If Distinct(n) Then
        Begin
                For i:=1 to NbPos(n) Do
                Begin
                If n mod 2 <> 0 Then
                        Begin
                        n:=n div 10;
                        End;
                End;
        End;
If n=0 then Chifimp:=True else Chifimp:=False;
End;

{36. ----------------------------------------------------------------------------------------------}

Function NbElem(T:Array of longint; Taille,Val:integer):integer;
(* _______________________________________________________________________________ *)
(* La fonction NbElem nous donne le nombre d'‚l‚ments Val pr‚sents dans le tableau *)
(* ------------------------------------------------------------------------------- *)
var i,cpt:integer;
BEGIN
cpt:=0;
For i:=1 to Taille  Do  If T[i]=Val Then cpt:=cpt+1;
NbElem:=cpt;
End;

{37. ----------------------------------------------------------------------------------------------}

Function NbElemSup(T:Array of longint; Taille,Val:integer):integer;
(* ______________________________________________________________________ *)
(* La fonction NbElemSup nous donne le nombre d'‚l‚ments sup‚rieurs … Val *)
(* ---------------------------------------------------------------------- *)
var i,cpt:integer;
BEGIN
cpt:=0;
For i:=1 to Taille  Do  If T[i]>Val Then cpt:=cpt+1;
NbElemSup:=cpt;
End;

{38. ----------------------------------------------------------------------------------------------}

Function NbElemInf(T:Array of longint; Taille,Val:integer):integer;
(* ______________________________________________________________________ *)
(* La fonction NbElemInf nous donne le nombre d'‚l‚ments inf‚rieurs … Val *)
(* ---------------------------------------------------------------------- *)
var i,cpt:integer;
BEGIN
cpt:=0;
For i:=1 to Taille  Do  If T[i]<Val Then cpt:=cpt+1;
NbElemInf:=cpt;
End;

{39. ----------------------------------------------------------------------------------------------}

Function Frere(A,B:longint):boolean;
(* _______________________________________________________________ *)
(* La fonction Frere donne vrai si A et B sont deux entiers fr‚res *)
(* --------------------------------------------------------------- *)
Begin
Frere:=(SumCh(A)=SumCh(B));
End;

{40. ---------------------------------------------------------------------------------------------}

Function Palin(ph:string):boolean;
(* __________________________________________________________________ *)
(* La fonction Palin donne vrai si nous avons affaire … un palindrome *)
(* ------------------------------------------------------------------ *)
var ch2,ch3:string;
i,k:longint;
Begin
ch2:='';
ch3:='';
For i:=1 to Length(Ph) Do
        Begin
        If (ord(upcase(ph[i]))>= 65) and (ord(upcase(ph[i]))<=90) Then
                Begin
                ch2:=ch2+ph[i];
                ch3:=ph[i]+ch3;
                End;
        End;
Palin:=(ch2=ch3);
End;

{41. ---------------------------------------------------------------------------------------------}
{42. ---------------------------------------------------------------------------------------------}
{43. ---------------------------------------------------------------------------------------------}
{44. ---------------------------------------------------------------------------------------------}
{45. ---------------------------------------------------------------------------------------------}

//=========================================================================================================================//


//**************************************** Les Proc‚dures ****************************************//

{1. ----------------------------------------------------------------------------------------------}

Procedure EcriT1D(var T:Array of longint;Taille:longint);
(* ______________________________________________________ *)
(* La proc‚dure EcriT1D nous permet d'afficher un tableau *)
(* ------------------------------------------------------ *)
var i:longint;
Begin
For i:=1 to Taille Do  write(T[i],' | ');
End;

{2. ----------------------------------------------------------------------------------------------}

Procedure LecT1D(var T:Array of longint;var taille:longint);
(* ___________________________________________________ *)
(* La proc‚dure LecT1D nous permet de cr‚er un tableau *)
(* --------------------------------------------------- *)
var i:longint;
Begin
write('Entrez la taille du tableau:');
readln(Taille);
For i:=1 to taille Do
        Begin
        write('T[',i,']=');
        read(T[i]);
        End;
End;

{3. ----------------------------------------------------------------------------------------------}

Procedure Permut(Var A,B:longint);
(* _______________________________________________ *)
(* La proc‚dure Permut permute deux nombres A et B *)
(* ----------------------------------------------- *)
var Save:longint;
Begin
Save:=A;
A:=B;
B:=Save;
End;

{4. ----------------------------------------------------------------------------------------------}

Procedure Kaprekar(n:longint;var  p1,p2:longint; var  kapr:boolean);
(* __________________________________________________________ *)
(* La proc‚dure kaprekar donne vrai si un nombre est kaprekar *)
(* ---------------------------------------------------------- *)
var p,j:longint;
begin
kapr:=false;
p:=n*n;
for j:=1 to nbpos(n) do
        begin
        p1:=p mod (puiss(10,j));
        p2:=p div (puiss(10,j));
        if (p1+p2)=n then   kapr:=true;
        end;
end;

{5. ----------------------------------------------------------------------------------------------}

Procedure TriBulles(var T:Array of longint;Taille:longint);
(* _____________________________________________ *)
(* La proc‚dure TriBulles effectue un tri Bulles *)
(* --------------------------------------------- *)
var i:longint; flag:boolean;
Begin
repeat
Flag:=False;
For i:=1 to Taille-1 Do
        Begin
        If T[i] > T[i+1] Then
                Begin
                Permut(T[i],T[i+1]);
                Flag:=True;
                End;
        End;
until Flag=False;
End;

{6. ----------------------------------------------------------------------------------------------}

Procedure Tri1Table(var T:Array of longint; Taille:longint);
(* __________________________________________________ *)
(* La prod‚dure Tri1Table effectue un tri … une table *)
(* -------------------------------------------------- *)
var i:longint;
Begin
For i:=1 to Taille-1 Do
        Begin
        NbElemInf(T,Taille,i);
        Permut(T[i],T[NbElemInf(T,Taille,i)+1]);
        End;
End;

{7. ----------------------------------------------------------------------------------------------}

Procedure LecT2D(var T:Tab;var nblig,nbcol:longint);
(* ____________________________________________________ *)
(* La proc‚dure LecT2D nous permet de cr‚er une matrice *)
(* ---------------------------------------------------- *)
var i,j:longint;
Begin
write('Entrez le nombre de lignes de la matrice: ');
readln(NbLig);
write('Entrez le nombre de colonnes de la matrice: ');
readln(Nbcol);
For i:=1 to nblig Do
        Begin
        For j:=1 to nbcol Do
                Begin
                write('T[',i,',',j,']=');
                read(T[i,j]);
                End;
        End;
End;

{8. ----------------------------------------------------------------------------------------------}

Procedure EcriT2D(var T:Tab; Nblig,Nbcol:longint);
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


{9. ----------------------------------------------------------------------------------------------}

Procedure TransMat(var T:Tab; m,n:longint;var Ta:Tab);
(* ______________________________________________________ *)
(* La proc‚dure TransMat nous donne la matrice transpos‚e *)
(* ------------------------------------------------------ *)
var i,j:longint;
Begin
For i:=1 to m Do
        Begin
        For j:=1 to n Do Ta[j,i]:=T[i,j];
        End;
End;

{10. ---------------------------------------------------------------------------------------------}

//=========================================================================================================================//


//Fin de la Biblioth‚que//

Begin
End.
