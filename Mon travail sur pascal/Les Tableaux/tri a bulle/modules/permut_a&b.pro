
procedure permut ( var a,b : longint) ;
    (*   Ce procedure nous permet de permuter entre  02 nombres   A et B    *)
var  sauve : longint ;
begin
sauve :+ a ;
a := b ;
b := sauve ;
end;


