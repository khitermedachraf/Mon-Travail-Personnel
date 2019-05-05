procedure tri_selection (  var T : array of longint ; tai: longint )  ;
{*
*}
var
   i : longint ;
{$i ./permut_a&b.pro}
{$i ./indice_petit(elem-tab).fon }

begin
  for i := 1 to tai-1 do
    permut(T[i],T[indice_petit(T,i,tai)]);
  readln;
end;
