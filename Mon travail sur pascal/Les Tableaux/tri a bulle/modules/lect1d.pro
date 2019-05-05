Procedure Lect1d(var T: Array of longint;var taille:longint);
(* ___________________________________________________ *)
(* La proc,dure LecT1D nous permet de cr,er un tableau *)
(* --------------------------------------------------- *)
var i:longint;
Begin
write('Entrez la taille du tableau:');
readln(Taille);
For i:=1 to taille Do
        Begin
        write('T[',i,']=');
        read(T[i]);
        End;
End;
