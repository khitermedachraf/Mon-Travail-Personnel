program test_ligne ; 
uses crt; 
type  tab = array [1..9, 1 .. 9] of LongInt ; 
var
T : tab ; 
lig,col ,m,n : LongInt ; 
 
{$i ./modules/remplissage.pro}
{$i ./modules/detect_par_region.fon}
begin 
	ClrScr ; 
	write(' Donner nombre de lignes  :  ') ; 
	Readln(lig) ; 
	write(' Donner nombre de colonnes  :  ') ; 
	Readln(col) ;
	remplissage(T,lig,col ) ; 
	writeln('  la region avant  detection des erreures  : ') ; 
	WriteLn('********************************');
	for m:= 1 to lig do 
	begin 
            for n:= 1 to col do 
                begin 
                    write('     ' ,T[m,n],' | ') ; 
                end ;
             writeln;   
	end ; 
    WriteLn;
	writeln('  la region apres  detection des erreures  : ') ; 
	WriteLn('********************************');	
	
	for m:= 1 to lig do 
	begin 
            for n:= 1 to col do 
                begin 
                if (detect_par_region(m,n, T) = true) then 
                        begin 
                        	textcolor( red) ; 
                            Write('     ' ,T[m,n],' | ') ; 
                        End
                         Else
                            Begin 
                            textcolor( white) ; 
                            write('     ' ,T[m,n],' | ') ; 
                            end ; 
                        
                    end ;
                    writeln;
	end ; 
	
	
	readln ;
End.
