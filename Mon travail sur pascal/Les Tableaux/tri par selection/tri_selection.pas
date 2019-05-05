Program  tri_par_selection ;

var
   taille : longint ;
   tab : Array [1 .. 100] of longint ;

   {$i ./modules/lect1d.proc}
   {$i ./modules/ecrit1d.proc}
   {$i ./modules/tri_selection1.pro}


begin
	lect1d(tab,taille) ;
	tri_selection(tab , taille) ;
	writeln( ' le tableau apres le tri est  : ') ;
     ecrit1d(tab, taille) ;

	readln;


end .
