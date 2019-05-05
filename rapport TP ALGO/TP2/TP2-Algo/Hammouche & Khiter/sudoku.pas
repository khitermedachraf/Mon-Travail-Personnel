Program sudoku ; 
uses crt  ; 

type    
        tab =  array  [1..50 , 1..50]  of LongInt ; 
var 
          Tableau :  tab ; 
          lig , col  , cpt   , k ,s : longint ; 
          
  
  
   {$i   ./modules/detect_par_region.pro}
 
    {$i  ./modules/remplissage.pro}
   
    {$i   ./modules/affichage.pro}   
    
    begin 
    	lig := 09 ; 
        col := 09 ;                              (*                              initialiser  les variables     *)
        
        remplissage ( tableau , lig , col) ; 
        
       (*  detect_par_ligne ( tableau , lig , col  )  ;
        
        
        detect_par_colonne( tableau , lig , col  )  ;  *)
              
      (*  detect_par_region ( tableau , lig , col  )  ; *)
        while ( cpt  <    18 )  do 
             begin 
             	k := Random(8) +1 ;
             	s:= Random(8) +1 ;
             	WriteLn ( '  la case  eronne    est   T [  ',s,' , ',k,' ]    =  ' , (s+k ) div 2 )   ;
             	cpt := cpt + 1 ; 
             End ;
        
         affichage ( tableau , lig , col) ; 

         readln ; 
        
        
    End . 

 

   
