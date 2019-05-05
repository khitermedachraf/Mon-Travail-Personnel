
program Sudoku;
uses crt;
TYPE tab=array[1..10,1..10]of longint;
var  T:tab;
v1,v2:longint;
{$i ./modules/remplissage.fon}
{$i ./modules/affichage.fon}
 begin 
 ClrScr ; 
remplissage(T,v1,v2);
WriteLn('   La grille   apres  detection des erreures   : ') ; 
writeln('**************************************') ;
affichage(T,v1,v2);
readln;
end.


