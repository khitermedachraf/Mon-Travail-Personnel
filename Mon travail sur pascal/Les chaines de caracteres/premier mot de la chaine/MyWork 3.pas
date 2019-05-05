program premier_mot ; 
var 
    p:  longint ; 
    chaine : string ; 
    
   {$i  ./modules/prem_mot.fon}
begin
	
	Readln (chaine) ; 
	Readln( p) ; 
	 writeln ( ' le premier mot est ' , prem_mot( chaine , p)) ; 
	 
	 readln ; 
end .