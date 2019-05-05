program array1 ;
uses crt;
var
    Tableau:array [1..5] of integer ;
    i:integer  ;

 begin ;
  clrscr ;
  writeln('le remplissage du tableau: ') ;
  writeln('    ');

  for i:=1 to 5 do
   begin
    write('veuiller introduire le nombre Nø ' , i, ':');
    readln( Tableau[i]);
   end ;

   writeln('  ');
   writeln('le tableau:');
  for i:=1 to 5 do
   begin
    write(Tableau[i], '  |  ' );
   end ;

   readln();

  end .


