unit biblio_1;

interface
function facto ( x :integer): longint ;
function arrange ( n , p : integer): longint ;
function comb (n, p  : integer): longint ;


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
end.

