
function prem_mot ( ch : string ; p : LongInt ) : string ;
      {*
                *************************************************************************************************************************
                        Donner le premier  mot de la chaine  a partir  de la position    ( P donne  ) dans  la chaine

                *************************************************************************************************************************
      *}
var
     mot : string ;
     continu : boolean ;
     i , j : longint ;

begin
	mot := '' ;
	i := p ;
	continu :=true ;
	while  ( i <= length (ch)) and ( continu  =  true) do
        begin
        	if   ch[ i ]  = ' '  then   i := i + 1
        	Else continu := false ;
        end ;

      j := 1 ;
      while  ( i <= length (ch)) and ( continu  =  true) do
        begin
        	if  ch [ i ] <>  ' '    then
            begin
            	mot[j] := ch[i] ;
            	j:= j + 1 ;
            	i := i +1  ;

            end
                Else   continu := false  ;

         End ;


	   mot[0]:= chr(j-1) ; 
	  prem_mot:=  mot   ;
	
	
end ;
