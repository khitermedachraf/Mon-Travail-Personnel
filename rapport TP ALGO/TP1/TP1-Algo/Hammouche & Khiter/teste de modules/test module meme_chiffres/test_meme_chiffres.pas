program test_meme_chiffres;

uses crt;
var  n : longint ;
     rep : boolean ;
function meme_chiffres( n : longint ) : boolean ;
var s , a : longint ;
begin
s := n mod 10 ;
meme_chiffres := true ;
repeat
a := n mod 10 ;
if ( a = s ) then meme_chiffres :=  true
else      meme_chiffres :=  false ;
n := n div 10 ;

until (n = 0 ) or  (meme_chiffres = false ) ;
end ;

BEGIN
clrscr ;
write (' donez N  :');
readln( n);
rep := meme_chiffres( n ) ;
writeln( rep );
readln ;

END.

