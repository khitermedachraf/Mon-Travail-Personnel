
Unit Bchaine;


interface

uses crt;
const maxm = 200;
Type Tab1Dch = array [1..maxm] of string;


//-------------------------Procédures élémentaires------------------------------
{ 1.}Function mylength(var S : string) : longint;
{ 2.}Function extchaine (S : string;pos,k :longint):String;
{ 3.}Function poschaine(ch,S : string): longint;
{ 4.}Procedure insertchaine( ch : string; var S : string; pos : longint);
{ 5.}Procedure Del(var S : string;pos,k :longint);
{ 6.}Procedure Replace(var S : string ; ch : string ; pos : longint);
//------------------------------------------------------------------------------

//--------------------Frequence D'une Sous-chaine-------------------------------
{ 7.}Function Freqchaine(ch,S : string) : longint;
{ 8.}Procedure Rechchaine(ch,S : string); {Procédure d'affichage de chaines en couleur}
//------------------------------------------------------------------------------

//--------------------Manipulation des Chaines----------------------------------
{ 9.}Procedure Delchaine(ch:string;var S:string);
{10.}Procedure Replacechaine (var S : string; ch1, ch2 : string);
{11.}Function invertchaine(S : string) : string;
//------------------------------------------------------------------------------

//---------------Procédures élémentaires mot------------------------------------
{12.}function separ( ch : char ):boolean;
//------------------------------------------------------------------------------

//----------------------Informations sur les mots-------------------------------
{13.}Function nbmot(S : string) : longint;
{14.}Function freqmot(mot,S : string) : longint;
//------------------------------------------------------------------------------

//-------------------Manipulation des Mots--------------------------------------
{15.}Function indicemot(S : string; rang : longint):longint;
{16.}Function extmot(S: string; rang : longint) : string;
{17.}procedure tabmot(S:string;var T:tab1Dch;var n : longint);
{18.}Procedure insertMot(Mot:string;var S:string;rang:longint);
{19.}Procedure Delmot(var S :string; rang : longint);
{20.}procedure delMotall(mot : string;var S:string);
{21.}Procedure Replacemot (var S : string;rang : longint; mot : string);
{22.}Procedure replacemotall(var S:string;mot1,mot2:string);
//------------------------------------------------------------------------------

Implementation

//------------------------------------------------------------------------------
function mylength(var S : string) : longint;
var i : longint;
begin
i:=1;
while ord(S[i])<>0 do i:=i+1;
mylength := i-1;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function extchaine(S:string; pos,k:longint) : string;
var i:longint;
begin
extchaine:='';
if pos < 1 then pos:=1;
i:=pos;
while (i<=pos+k-1) and (i<=length(S)) do
      begin
      extchaine:=extchaine+S[i];
      i:=i+1;
      end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function poschaine(ch,S : string): longint;
var i,j : longint; inter : string;
begin
poschaine := 0;
inter := '';
i:=1;
while (i<=length(S)-length(ch)+1) and (inter <> ch) do
      begin
      inter :='';
      for j:=1 to length(ch) do inter := inter + S[i+j-1];
      i:=i+1;
      end;
if inter = ch then poschaine := i-1;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure insertchaine(ch:string; var S:string ; pos:longint);
var inter:string; i : longint;
begin
inter:='';
if pos < 1 then pos:=1;
if pos > length(S) then pos := length(S)+1;
for i:=1 to pos-1 do inter := inter + S[i];
inter := inter + ch;
for i:=pos to length(S) do inter := inter + S[i];
S:=inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure Del(var S:string; pos,k:longint);
var Inter:string; i : longint;
begin
inter:='';
if pos <=length(S) then
begin
for i:=1 to pos-1 do inter := inter + S[i];
for i:=pos + k to length(S) do if i >= 1 then  inter := inter + S[i];
S:=inter;
end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure Replace(var S : string ; ch : string ; pos : longint);
var  i : longint;
begin
for i:=pos to pos + length(ch) - 1 do S[i]:=ch[i - pos + 1];
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function Freqchaine(ch,S : string):longint;
var i:longint;
begin
freqchaine:=0;
for i:=1 to length(S)-length(ch)+1 do
    if Copy{extchaine}(S,i,length(ch))=ch then freqchaine:=freqchaine+1;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure Rechchaine(ch,S : string);
var i : longint;
begin
i:=1;
textcolor(15);
textbackground(0);
while i<=length(S) do
    begin
    if Copy{extchaine}(S,i,length(ch))= ch then
       begin
       textbackground(4);
       textcolor(14);
       write(ch);
       textcolor(15);
       textbackground(0);
       i:=i+length(ch);
       end
    else
        begin
        write(S[i]);
        i:=i+1;
        end;
    end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure Delchaine(ch:string;var S:string);
var i:longint;
begin
i:=1;
while i<=length(S)-length(ch)+1 do
    begin
    if Copy{extchaine}(S,i,length(ch))=ch then Delete{del}(S,i,length(ch));
    i:=i+1;
    end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Replacechaine (var S : string; ch1, ch2 : string);
var i : longint;
begin
i:=1;
while i <= length(S)-length(ch1)+1 do
    if Copy{extchaine}(S,i,length(ch1)) = ch1 then
       begin
       Delete{del}(S,i,length(ch1));
       Insert{insertchaine}(ch2,S,i);
       end
    else i:=i+1;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function invertchaine(S : string) : string;
var inter : string; i : longint;
begin
inter :='';
for i:=1 to length(S) do inter := S[i] + inter;
invertchaine := inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function separ( ch : char ):boolean;
var E : set of char;
begin
E := [' ','.',',',';','?','!','(',')']; (*E est l'ensemble des separateurs*)
Separ := ch in E;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function nbmot(S : string) : longint;
var i,r:longint;
begin
S:=' '+S;
i:=1;r:=0;
while i < length(S)do
      begin
      if (*separ(S[i]*)(S[i]=' ') and (*not separ(S[i]*)(S[i+1]<>' ') then r:=r+1;
      i:=i+1;
      end;
nbmot := r;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function freqmot(mot,S : string) : longint;
begin
freqmot := freqchaine(' '+mot+' ',' '+S+' ');
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function indicemot(S:string;rang:longint):longint;
var i,r:longint;
begin
S:=' '+S;
i:=1;r:=0;
while (i<length(S)) and (r<rang) do
      begin
      if (*separ(S[i]*)(S[i]=' ') and (*not separ(S[i]*)(S[i+1]<>' ') then r:=r+1;
      i:=i+1;
      end;
if r=rang then indicemot:=i-1 else indicemot:=0;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function extmot(S:string;rang:longint):string;
var inter:string;i:longint;
begin
inter:='';i:=indiceMot(S,rang);
if i<>0 then
   begin
   while (*not separ(S[i]*)(S[i]<>' ') and (i<=length(S)) do
         begin
         inter:=inter+S[i];
         i:=i+1;
         end;
   end;
extmot:=inter;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure tabmot(S:string;var T: tab1Dch;var n:longint);
var r:longint;
begin
n:=nbmot(S);
for r:=1 to n do T[r]:=extmot(S,r);
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure insertMot(Mot:string;var S:string;rang:longint);
var i:longint;
begin
if indiceMot(S,rang)>0 then
   begin
   i:=indiceMot(S,rang);
   insert{insertchaine}(mot+' ',S,i);
   end
else if rang <= 0 then S:=mot+' '+S else S:=S+' '+mot;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure delMot(var S:string;rang:longint);
var r,i : longint; inter : string;
begin
r:=indicemot(S,rang);
if r<>0 then
   begin
   i:=r;
   inter:='';
   while (*not separ(S[i]*)(S[i]<>' ') and (i<=length(S)) do
         begin
         inter:=inter+S[i];
         i:=i+1;
         end;
   end;
Delete{Del}(S,r,length(inter)+1);
end;

//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
procedure delMotall(mot : string;var S:string);
var i:longint;
begin
i:=1;
while i<=nbmot(S) do if extmot(S,i)=mot then delmot(S,i) else i:=i+1;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure Replacemot (var S : string;rang : longint; mot : string);
begin
if (rang<=nbmot(S)) and (rang>=1) then
   begin
   insertmot(mot,S,rang);
   delmot(S,rang+1);
   end;
end;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Procedure replacemotall(var S:string;mot1,mot2:string);
var i:longint;
begin
i:=1;
while i<=nbmot(S) do begin if extmot(S,i) = mot1 then replacemot(S,i,mot2); i:=i+1; end;
end;
//------------------------------------------------------------------------------

Begin
END.















