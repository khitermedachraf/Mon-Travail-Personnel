procedure affichage (t : tab  ; lig , col  :  LongInt)  ;

    var  i , j :  longint ;


    begin
    	
    	writeln ; 
    	writeln ; 
    	writeln  (   '  La grille de Sudoku  est  :') ; 
    	for i:=   1 to   lig  do
    	begin
                for j:= 1 to  col  do
                    begin
                    	textcolor  (yellow) ;
                    	Write(t[i,j] ,'  |  ') ;
                    End;
                WriteLn ;
                writeln;
        End;

    End;
