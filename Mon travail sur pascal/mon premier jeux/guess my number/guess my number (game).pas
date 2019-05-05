program guess_my_number_game;

uses crt;
var
 answer , guess , cont , error : integer;
 game : string;
 UI: string ;

BEGIN
repeat
clrscr;
textcolor( green) ;
cont := 0;
repeat
clrscr;
writeln ( '  Please select a game  : ' );
writeln;
writeln( ' A-) game 1 ' ) ;
writeln( ' B-) game 2 ');
writeln (' C-) game 3 ' );
writeln;
write ( ' Enter a selection :  ' );
readln ( game );
until  ( game = 'a' ) or (game = 'A') or ( game = 'B' ) or ( game = 'b' ) or ( game = 'c' ) or ( game = 'C' );
   case   game  of
        'a' , 'A':  begin
                          answer := random (10)+ 1 ;
                          writeln(' you chose game number  1  ;) ');
                          writeln (' you should guess my secret number  : ( The numbers are between   1 To 10 ) ');
                     end;
      'b' , 'B'  :  begin
                         answer := random (100)+ 1 ;
                           writeln(' you chose game number  2  ;) ');
                          writeln (' you should guess my secret number  : ( The numbers are between   1 To 100 ) ');

                     end;
      'c', 'C'  : begin
                           answer := random (1000)+ 1 ;
                          writeln(' you chose game number  3  ;) ');
                          writeln (' you should guess my secret number  : ( The numbers are between   1 To 1000 ) ');
                     end;
    end;
    repeat
         repeat
           writeln;
           write ( ' Enter a guess please  : ' );
           readln  ( UI);
           val( UI, guess , error );
           if error <> 0 then
               writeln('  Incorrect input - Please try again ! ' ) ;
         until error = 0 ;
            cont := cont + 1 ;

          if guess < answer then
               writeln ( ' Too low ! ' )
         else if guess > answer then
               writeln ( ' Too High !' )
         else
               writeln ('  You guessed my number in ', cont, ' guesses :D ! ' );
     until  guess = answer ;
          repeat
             writeln;
             write (' Play again  :) !!!   Yes / No   : ');
             readln ( game );
          until ( game = 'yes' ) or ( game = 'Yes' ) or ( game = 'no') or ( game = 'No');

until ( game = 'no' ) or ( game = 'No' ) ;



END.

