Procedure tri_transposition ( var tab : array of longint ; taille : longint) ;
var  i : longint ; 
{$i  ./permut_a&b.pro}
begin 
	i := 1 ; 
	While i   <  taille  do 
        
            if  ( tab[ i ] > tab[i+1]) then 
                
             Begin   
                permut(tab[i], tab[i+1]);
                i:= 1 ; 
            End
            
            Else  i:= i +1 ;   
	end  ; 