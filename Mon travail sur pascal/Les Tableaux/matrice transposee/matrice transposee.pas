Program matrice_transpose ; 
type  tab = Array [ 1..50 , 1 .. 50] of LongInt ;
var 
     T1 , T2 : tab ; 
     lig , col : longint ; 
   
{$i ./modules/lect2d.pro}
{$i ./modules/matrice_transposee.pro} 
{$i ./modules/ecrit2d.pro} 

begin
     lect2d(T1, lig , col) ;                               
    matrice_transposee( T1,T2,lig,col) ; 
    ecrit2d(T2,col,lig) ;
    	
   
     readln; 
	
	 
end.
