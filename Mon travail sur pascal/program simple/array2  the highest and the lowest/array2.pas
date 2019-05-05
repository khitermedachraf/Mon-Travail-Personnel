program arrays;

uses crt;
var
numbers : array [1 .. 12] of integer ;
high , low ,  x , error   :integer ;
UI : string ;


procedure quit ;
begin
writeln;
writeln;
write(' Press  <  Enter  >  to quit  ' );
readln;
end;
BEGIN
clrscr;
textcolor ( green);
for x:= 1 to 12 do
  begin
    repeat
      clrscr;
      write('   enter  numbers of  the groupes   : ');
      readln (UI);
      val ( UI, numbers [x], error)

    until error = 0 ;
   end;
 high := numbers[1];
 low   :=  numbers[1];
     for  x := 2 to 12 do
          begin
             if  numbers [x] > high then
                  high := numbers[x] ;
             if  numbers [x] < low then
                  low :=  numbers [x] ;
           end ;

      gotoxy ( 10 , 7 );
      write  (' The highest number is : ', high );
      gotoxy(10  , 9 );
      write(' The lowest number is : ', low ) ;


quit;


END.

