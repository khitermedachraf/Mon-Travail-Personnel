program exo_10_Td1Suite;

uses crt;
var N,Nb,C,S,N2,PR   : cardinal;

BEGIN
    CLRSCR;
    write (' Donnez un entier :   ');
    readln (n);
    repeat
        n2 := 0;
        for c:= 1 to 9 do
        begin
            s:=n;
            nb:=0;
            while s <>0  do
            begin
            if s mod 10 = c then
                nb:=nb + 1;
            s:= s div 10 ;
            end;
            if  nb  <> 0  then
                n2 := n2*100 + nb*10 + c ;
        end;
        writeln (n2);
        n := n2 ;
    until (n2 = 21322314);
    writeln ('c''fini');
    writeln;
    writeln;
    writeln (' Press   <  Enter  >  to quit ') ;
    readln;

END.

