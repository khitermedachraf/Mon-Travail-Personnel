program arrays;

uses crt;
var
 names : array [1 .. 7 ] of string = (' my family members are   : ', ' khiter med achraf ' , ' khiter med amine ' , ' khiter essaid ' , ' khiter ourida ' , ' khiter imane ' , ' khiter imane ' );
 nums  : array [1 .. 7 ] of  integer;
  x    : integer ;
  error  , sum : integer ;
  UI   : string ;

procedure quit ;
begin
writeln;
writeln;
write ( '  Press <     Enter    >  to quit   ' );
readln;
end;


BEGIN
textcolor(green);
clrscr;
 for  x := 1 to 7 do
    writeln( names [x]);
       sum := 0 ;
 for  x := 2 to  7  do
       begin
             repeat

                 write ( ' enter an integer    : ' );
                 readln ( UI );
                 val ( UI , nums [x],error );
              until  error = 0 ;
              sum := sum +   nums [x] ;

        end;
   writeln ( '  the sum of  the  array  is  :   ' , sum );
 quit ;
END.

