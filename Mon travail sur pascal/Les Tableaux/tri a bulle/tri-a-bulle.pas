2

Program tri_a_bulle ;
uses crt;
var   tab : Array [1 ..  50] of longint ; 
         taille : longint ;       
{$i ./modules/lect1d.pro}
{$i ./modules/ecrit1d.pro}
{$i ./modules/tri_bulle.pro}
 
 begin 
 	Lect1d (tab , taille); 
  	tri_bulle(tab, taille) ;  
 	Ecrit1d(tab,taille) ; 
 	
 	readln; 
end .
