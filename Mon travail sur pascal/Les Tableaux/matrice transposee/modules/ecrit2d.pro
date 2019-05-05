
Procedure ecrit2d(var T:Tab; Nblig,Nbcol:longint);
(* _____________________________________________ *)
(* La proc‚dure EcriT2D nous affiche une matrice a 2 dimension*)
(* --------------------------------------------- *)
var i,j:longint;
Begin
For i:=1 to Nblig Do
        Begin
        For j:=1 to Nbcol Do
                Begin
                write(T[i,j],' | ');
                End;
        writeln(' ');
        End;
End;
