program utiliser_case_of;

uses crt ;
var
sel : char;
BEGIN
clrscr;
writeln;
writeln;
write(' enter a selection (A.B.C.D) : ' );
readln(sel);
case sel of

      'A','a':begin
      writeln(  sel, ' was selected ');
              end;
      'B','b':begin
       writeln( sel, ' was selected ');
               end;
      'C','c':begin
       writeln( sel, ' was selected ');
               end ;
      'D','d':begin
       writeln( sel, ' was selected ');
               end;
       else    begin

       writeln('something else was selected ')
               end
       end;
writeln;
writeln;
writeln(' press < any key > to quit  ? ');
readln;
END.


