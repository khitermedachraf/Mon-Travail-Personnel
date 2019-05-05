Procedure matrice_transposee( T1 : tab ;  var T2 : tab ; var lig , col : LongInt  ) ; 
(*  Construire la matrice transposée (A’ ) d’une matrice. 
                                (Rappel : si A(m,n) est la matrice dedépart, sa transposée est A’ (n,m)).*)
var   i , j : longint ;

begin 
     for i := 1 to  lig do 
            begin 
            	
            	 For j := 1 to  col  do   T2[j,i] := T1[ i,j] ;
            end;  
	
	
End ;