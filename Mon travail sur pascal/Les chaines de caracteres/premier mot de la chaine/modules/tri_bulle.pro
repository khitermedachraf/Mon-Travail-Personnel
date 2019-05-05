Procedure tri_bulle( var tab : array of longint ; taille : longint) ;
var  i : longint ; 
        test_permut : Boolean ;
{$i  ./permut_a&b.pro}
begin 
	     Repeat
	         test_permut :=  false ;
        
             for i := 1  to  taille - 1  do 
                Begin                       
                    if  ( tab[ i ] > tab[i+1]) then 
                
                        Begin   
                            permut(tab[i], tab[i+1]);
                            test_permut := true ; 
                        End ; 
                    end ; 
             taille := taille - 1 ;
            
         until (test_permut = false) ;    
	end  ; 