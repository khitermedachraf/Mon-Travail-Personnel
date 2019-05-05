
Procedure TriBulles(var T:Array of longint;Taille:longint);
(* _____________________________________________ *)
(* La proc‚dure TriBulles effectue un tri Bulles *)
(* --------------------------------------------- *)
var i:longint; flag:boolean;
{$i c:\algo\permut.pro}
Begin
repeat
Flag:=False;
For i:=1 to Taille-1 Do
        Begin
        If T[i] > T[i+1] Then
                Begin
                Permut(T[i],T[i+1]);
                Flag:=True;
                End;
        End;
until Flag=False;
End;