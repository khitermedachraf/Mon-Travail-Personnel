program test;
type messcod=record
             ch1:string;
             decal:longint;
             ch2:string;
             end;
{$i c:\algo\caraleat.fon}
{$i c:\algo\decalpha.fon}
var crypt, e:messcod;

procedure ch_vernam(message,crypto:messcod);
var cryy,ch:string;i,a:longint;bc:boolean;
begin
message.ch1:=UPCASE(message.ch1);
message.ch2:=UPCASE(message.ch2);
ch:= decalpha(message.decal);
cryy:='';
for i:=1 to length(message.ch1) do
     begin
     bc:=false;
     a:=(pos(copy(message.ch1,i,1),ch)+pos(copy(message.ch2,i,1),ch)-2) mod 26;
     if ord(message.ch1[i])=32 then
     begin
     cryy:=concat(cryy,' ');
     bc:=true;
     end;
     if bc=false then cryy:= concat(cryy,ch[a+1]);
     end;
crypto.decal:=message.decal;
crypto.ch1:=message.ch1;
crypto.ch2:=cryy;
end;

begin
writeln('ecrire le message en clair: ',e.ch1);
readln(e.ch1);
writeln( 'voici votre cl� :',caraleat(length(e.ch1)));
readln(caraleat(length(e.ch1)));
readln(decalpha(e.decal));
ch_vernam(e,crypt);
readln;
end.
