program nombre_app_chaine ; 
uses crt ; 
var 
        s_chaine  , chaine  : String  ; 
        res : longint ; 

{$i   ./modules/nb_app_ch.fon}

begin
	
	Write ( '   SVP  ,  Entrer  votre  principale chaine de caractere  :  ') ; 
	Readln ( chaine) ;	
	Write ( '   SVP  ,  Entrer  votre  sous- chaine de caractere  :  ') ; 
	readln  (s_chaine)  ; 
	 res  :=  nb_app_ch ( s_chaine , chaine )  ; 
	 WriteLn (' Le nombre d''apparition de la sous-chaine  dans  la chaine est  : ' , res )   ; 
	 readln ; 
	
	
	
end .