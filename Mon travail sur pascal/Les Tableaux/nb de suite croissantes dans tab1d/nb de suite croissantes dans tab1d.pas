Program nb_suite_dans_tableau ; 

var
     tab : array [0 .. 50 ] of longint ; 
     taille , res  : LONGINT ; 
    
{$i ./modules/nb_suite_tab.fon}
{$i ./modules/lect1d.pro}

Begin
	Lect1d(tab , taille) ;
	res :=  nb_suite_tab (tab , taille) ; 
	WriteLn( ' Le nombre de suites dans le tableau  1 dimension est  :' , res ) ;
	readln ;
	
end .