Procedure lect2d(var T:tab; var  lig , col:longint);
(* ___________________________________________________ *)
(* La proc,dure LecT2D nous permet de creer un tableau a 2 dimension*)
(* --------------------------------------------------- *)
var i ,j :longint;
Begin
write('Entrez le nombre de ligne du tableau:');
readln(lig);
write('Entrez le nombre de column du tableau:');
readln(col) ;
For i:=1 to lig Do
        Begin
        	for j := 1 to  col do 
                Begin
                    write('T[',i,',',j,']=');
                    read(T[i,j]);
                 end; 
        End;
End;
