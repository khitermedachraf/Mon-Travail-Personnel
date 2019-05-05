program test_ligne ; 
uses crt; 
type  tab = array [1..9, 1 .. 9] of LongInt ; 
var
T : tab ; 
lig,col ,m,n : LongInt ; 
 
{$i ./modules/remplissage.pro}
{$i ./modules/detect_par_ligne.fon}
begin 
	ClrScr ; 
	write(' Donner nombre de lignes  :  ') ; 
	Readln(lig) ; 
	write(' Donner nombre de colonnes  :  ') ; 
	Readln(col) ;
	remplissage(T,lig,col ) ; 
	writeln('  la colonne avant  detection des erreures  : ') ; 
	WriteLn('********************************');
	for m:= 1 to lig do 
	begin 
            for n:= 1 to col do 
                begin 
                    writeln('     ' ,T[m,n],' | ') ; 
                end ;
             writeln;   
	end ; 
    WriteLn;
	writeln('  la colonne apres  detection des erreures  : ') ; 
	WriteLn('********************************');	
	
	for m:= 1 to lig do 
	begin 
            for n:= 1 to col do 
                begin 
                if (detect_par_ligne(m,n,lig,col, T) = true) then 
                        begin 
                        	textcolor( red) ; 
                            WriteLn('     ' ,T[m,n],' | ') ; 
                        End
                         Else
                            Begin 
                            writeln('     ' ,T[m,n],' | ') ; 
                            end ; 
                        
                    end ;
                    writeln;
	end ; 
	
	
	readln ;
End.
