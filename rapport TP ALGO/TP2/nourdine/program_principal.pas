program sudoku;
type grille = array[1..9,1..9] of Longint;
	 tab2d = array[1..100,1..2] of Longint;
var valid:Boolean;
	t:grille;
	v:tab2d;
{$i .\verif_sudoku.pro}
{$i .\ecri2d.pro}
{$i .\aleat2d.pro}
{$i .\esth_grille.pro}
begin
	aleat2d(9,9,9,t);
	verif_sudoku(t,valid,v,l);
	if valid=true then
	begin
		writeln('votre grille est bonne !');
	end
	else
	begin
		writeln('ligne','colonne');
		esth_grille(t,v,l);
	end;
end.