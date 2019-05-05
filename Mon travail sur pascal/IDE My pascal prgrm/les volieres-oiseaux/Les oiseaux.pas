Program les_oiseaux ; 
uses crt ; 
type  tab  = Array [ 1 .. 10 ] of integer  ; 
var    tab1 : tab ;
         i , j  , cpt  : Integer ; 

Begin
	ClrScr;
	textcolor( green) ;
	WriteLn(' Donner la repartition de  04  premieres volieres   : ') ;
	for i := 1 to 4 do 
        Begin 
        	write( ' Voliere  num ' , i, '  :' ) ;
             readln (tab1[i] ) ; 
         end;

	for j := 1 to  1995 do 
            Begin
            	i:= 1 ; 
            	cpt:= 0 ;
            	if  tab1[i] <> 0  then 
                    Begin
                    	tab1[i] := tab1[i]  -  1  ;
                    	i:= i + 1 ;
                    	cpt:= cpt + 1 ;
                    end
                 Else  i := i + 1 ;  
                 
                   tab1[i] := cpt ;
                   writeln(tab1[i],i)
                     
             End;
            
     i := 1 ; 
     while (tab1[i] <> 0 ) do 
     Begin
     	writeln( ' Voliere num ',i,' contient   :  ', tab1[i]) ; 
     	i := i + 1 ;
     	
      end ;
      WriteLn( ' On a  ',  i - 1, ' volieres' ) ;
	
     readln;    	
End.