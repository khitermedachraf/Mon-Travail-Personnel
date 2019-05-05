unit biblio_1;

interface
function facto ( x :integer): longint ;
function arrange ( n , p : integer): longint ;
function comb (n, p  : integer): longint ;
function miroire( x : longint ): longint ;  (* La fonction Miroire permet d'inverser un nombre,exemple: Mirror(123)=321 *)
function concat (a,b:longint):longint;
FUNCTION nbpos (N: longint): longint;
FUNCTION puiss (a, n: longint): longint;
function nb_occrnce( x,ch : longint) : longint ;
function diff( x,y : longint ) : boolean ;






implementation
function facto ( x : integer ) : longint ;
var
 f , i : longint ;
     begin
       f := 1 ;
          for i := 2 to x do
          f := f *i ;

 facto := f ;
      end;
function arrange ( n , p : integer ) : longint ;

 begin
    arrange := trunc (facto (n )/ facto (n-p) );

 end;
function comb( n , p : integer): longint ;

   begin
      comb := trunc(facto(n) / (facto (p)* facto ( n-p) )  );
   end;
function miroire( x : longint ): longint ;
   var  npos , m , n : longint ;
   {$i modules\NBPOS.fon}
          {* Pour donner l' image d' un nombre  donnee  x  qui a nbpos = ( 2 ou 3 )
                      pr exmpl (63 ---> 36) et (456   --- > 654)           *}
   begin
      npos := NBPOS (x) ;
      if npos = 2 then
         begin
            m := x mod 10 ;
            n := x div 10 ;
            x:= m *  10 + n ;
            miroire := x ;
         end
      else
         begin
           m := x div 100 ;
           n:=  x mod 10 ;
           x := x - m * 100 - n ;
           x := x + m + n * 100 ;
           miroire := x ;
         end ;


   end ;

function concat (a,b:longint):longint;
(*----------------------------------*)
(*    concatene A avec B (AB)       *)
(*----------------------------------*)
var res: longint;
{$i .\nbpos.fon}
{$i .\puiss.fon}
begin
res:=a* puiss(10,nbpos(b))+b;
concat:=res;
end;
FUNCTION nbpos (N: longint): longint;

//  Donne le nombre de positions de N.//

var i: longint;

BEGIN
i := 1;
WHILE (N div 10 <> 0) DO
        BEGIN
        i := i + 1;
        n := n div 10;
        END;
nbpos := i;
END;
FUNCTION puiss (a, n: longint): longint;

// le: Donne a . la puissance n (a^n) //

var i, res: longint;

BEGIN
res := 1;
FOR i := 1 TO n DO res := res * a;
puiss := res;
END;

function nb_occrnce( x,ch : longint) : longint ;
var nb_occ : longint           ;
begin
nb_occ := 0 ;
{*  pour calculer le nombre d appariton d  un chiffre dans un nombre x donnee *}
repeat

   if (x mod 10 = ch) then nb_occ := nb_occ + 1 ;
   x :=  x div 10 ;

until (x = 0);
nb_occrnce := nb_occ ;
end;
function diff( x,y : longint ) : boolean ;
  var  a , i : longint ;
  {$i modules\CONCAT.fon}
  {$i modules\nb_occrnce.fon}
                                      ///      Pour comparer si les chiffres qui composent les deux nombres      ///
                                     ///    sont non nulls et aussi sont deffirents entre eux                   ///

  begin
     a := CONCAT( x,y) ;
     diff := true ;
     if nb_occrnce(a , 0) <> 0 then diff := false ;
     for i:= 1 to 9 do
        if nb_occrnce( a ,i ) > 1 then  diff := false ;

  end ;





end.

