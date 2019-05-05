program test_replissage ; 
uses crt ; 
type   tab = Array [1 .. 9, 1 .. 9 ]   of LongInt ;
var 
T : tab ; 
i,j :   LongInt ; 
{$i ./MODULES/remplissage.pro}
Begin 
	ClrScr ;
	WriteLn(' Le remplissage aleatoire du Tableau :  '  )  ; 
	WriteLn('********************************')  ; 
	remplissage(t,9,9) ; 
	for   i := 1 to 9  do 
        begin
        	for j := 1 to 9 do  
               Begin 
                    Write('       ', T[i,j] , ' | ') ;
               End ;
            writeln ; 
            writeln ;
    End;
    
    Readln ;
    
end .  