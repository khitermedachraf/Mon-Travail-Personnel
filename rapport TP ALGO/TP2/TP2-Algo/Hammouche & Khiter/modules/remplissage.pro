
procedure remplissage ( var  t : tabsud   ; lig,col : longint )  ;

 	// Role : Remplir un tableau 02dimonsions (lig , col)  d’une
 	//  façon aleatoire en utilisant la fonction standard
 	//  				Random  & randomize .
var   i , j  :  longint ;

Begin

	Randomize;
	for  i :=   1 to  lig  do
            begin
                    for j := 1 to col do
                        Begin
                           t[i,j] := Random (8) + 1 ;
                        end ;
            end ;

End ;
