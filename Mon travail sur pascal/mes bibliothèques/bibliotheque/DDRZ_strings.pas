unit DDRZ_strings ;
interface
type
E= set of char ;
tab2d=array[1..1000,1..1000]of longint ;
tb2chain=array[1..1000,1..1000]of string ;
tb2real=array[1..1000,1..1000]of real ;

 //1//
   function freqchaine (ch,chaine:string):longint ;
(*------donne la frequence d'apparition de ch dans chaine--------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
 //2//
   function separ(ch:char):boolean ;
(*------donne vrai si le caractere ch est un separateur ------,--.--;--:--!--?--(--)-- --------*)
(*---------------------------------------------------------------------------------------------*)
 //3//
procedure delchaine (ch:string ; var s : string );
(*-----supprime toutes les chaines 'ch'dans s--------------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
 //4//
procedure replace_c1_c2 (var s : string ;ch1,ch2:string );
(*-----remplace toutes les chaines c1 par c2 dans s--------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
 //5//
  procedure invert_ch (s: string ; var invs:string );
(*-donne l'inverse d'une chaine s en mettant le resultat dans invs-----------------------------*)
(*---------------------------------------------------------------------------------------------*)
 //6//
    procedure dec_cirX(var ch:string ;k:longint);
(*fais un decalage circulaire vers la droite k fois--------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
 //7//
procedure gener_ch_alea (p:longint ; var ch:string );
(*-genere une chaine de caracteres ch aleatoirement de p positions-----------------------------*)
(*---------------------------------------------------------------------------------------------*)
//8//
procedure build_ch (t : tab2d ;l,ligne : longint;var chaine:string);
(*construit un chaine de caractere a partir du contenu des lignes d'une colonne l d'un tableau-*)
(*---------------------------------------------------------------------------------------------*)
//9//
   procedure ecrit2d(var t : tab2d ;lig,col:longint );
(*------affiche un tableau d'entiers 2 dimensions ---------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
//10//
    procedure lect_2d (var T:tab2d; var l,c:longint ) ;
(*------remplit un tableau d'entiers 2 dimensions ---------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
//11//
procedure lect2chain(var T:tb2chain; var l,c:longint ) ;
(*------remplit un tableau de chaines 2 dimensions --------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
//12//
procedure ecr2chain(var t : tb2chain ;lig,col:longint );
(*------affiche un tableau de chaines 2 dimensions --------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
//13//
procedure lect2real(var T:tb2real; var l,c:longint ) ;
(*------remplit un tableau de reels 2 dimensions-----------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
//14//
procedure ecr2real(var t : tb2real ;lig,col:longint );
(*------affiche un tableau de reels 2 dimensions ----------------------------------------------*)
(*---------------------------------------------------------------------------------------------*)
implementation
//1//
     function freqchaine (ch,chaine:string):longint ;
var
i : longint ;
begin
freqchaine :=0 ;
for i := 1 to (length(chaine)-length(ch)+1) do
   if copy(chaine,i,length(ch))=ch then
        freqchaine := freqchaine +1 ;
end ;
//------------------------------------------------------------------------------------------------//
//2//
function separ(ch:char):boolean ;
var
D:set of char ;
begin
D:=[' ',',','.',';','?','!','(',')',':'];
separ := ch in D;
end;
//------------------------------------------------------------------------------------------------//
//3//
procedure delchaine (ch:string ; var s : string );
var
i : longint ;
begin
i := 1 ;
while i <=(length (s)-length (ch)+1) do
   begin
    if copy (s ,i ,length (ch))=ch then
     begin
     delete (s,i , length(ch) );
     i := i -1 ;
     end;
     i := i +1 ;
    end ;
end;
//------------------------------------------------------------------------------------------------//
//4//
procedure replace_c1_c2 (var s : string ;ch1,ch2:string );
var
i : longint ;
begin
i := 1 ;
while i<= length(s)-length(ch1)+1 do
 if copy(s,i,length(ch1))=ch1 then
  begin
  delete(s,i,length(ch1));
  insert (ch2,s,i);
  end
 else i := i +1 ;
end ;
//------------------------------------------------------------------------------------------------//
//5//
  procedure invert_ch (s: string ; var invs:string );
 var
  i : longint ;
 begin
  invs :='';
  for i := 1 to length (s) do
     invs := s[i]+invs ;
 end ;
//------------------------------------------------------------------------------------------------//
//6//
    procedure dec_cirX(var ch:string ;k:longint);
var
 i ,n : longint ;
 inter : string ;
begin
k := k mod (length(ch));
 for i := 1 to length (ch ) do
   begin
        n := length (ch) ;
        inter [(i+k)mod n]:=ch[i];
   end ;
 inter [length(ch)]:= ch [length(ch)-k];
 for i :=1 to length (ch)do
   begin
        ch[i]:= inter [i];
   end ;
end;
//-------------------------------------------------------------------------------------------------//
//7//
procedure gener_ch_alea (p:longint ; var ch:string );
var
 i,c:longint ;
begin
    ch:='' ;
    randomize ;
    for i :=1 to p do
        begin
           c:=random(26)+65 ;
           ch:= ch + chr(c) ;
        end ;
end;
//-------------------------------------------------------------------------------------------------//
//8//
procedure build_ch (t : tab2d ;l,ligne : longint;var chaine:string);
var
 i : longint ;
begin
chaine:='' ;
for i:=1 to ligne do
 chaine := chaine + chr (T[i,l]);
end;
//-------------------------------------------------------------------------------------------------//
//9//
   procedure ecrit2d(var t : tab2d ;lig,col:longint );
var
 i ,j :longint ;
begin
 for i :=1 to lig do
   begin
        for j:=1 to col do
                begin
                        if j=col then writeln(T[i,j]:7 ,' | ')
                        else write(T[i,j]:7 ,' | ');
                end;
   end ;
end ;
//----------------------------------------------------------------------------------------------------//
//10//
procedure lect_2d (var T:tab2d; var l,c:longint ) ;
var
i,j : longint ;
begin
        writeln('donnez le nombre de lignes:');
        readln(l);
        writeln('donnez le nombre de colonnes:') ;
        readln(c);
        for i := 1 to l do
                for j:=1 to c do
                       begin
                        writeln('T[',i,',',j,']=')  ;
                        readln(T[i,j]);
                       end;
end;
//-----------------------------------------------------------------------------------------------------//
//11//
procedure lect2chain(var T:tb2chain; var l,c:longint ) ;
var
 i,j : longint ;
begin
        writeln('donnez le nombre de lignes:');
        readln(l);
        writeln('donnez le nombre de colonnes:') ;
        readln(c);
        for i := 1 to l do
                for j:=1 to c do
                       begin
                        writeln('T[',i,',',j,']=')  ;
                        readln(T[i,j]);
                       end;
end;
//-----------------------------------------------------------------------------------------------------//
//12//
procedure ecr2chain(var t : tb2chain ;lig,col:longint );
var
 i ,j :longint ;
begin
 for i :=1 to lig do
    begin
        for j:=1 to col do
             begin
                if j=col then writeln(T[i,j]:25 ,' | ')
                else write(T[i,j]:25,' | ');
             end;
    end ;
end ;
//-----------------------------------------------------------------------------------------------------//
//13//
procedure lect2real(var T:tb2real; var l,c:longint ) ;
var
i,j : longint ;
begin
        writeln('donnez le nombre de lignes:');
        readln(l);
        writeln('donnez le nombre de colonnes:') ;
        readln(c);
        for i := 1 to l do
                for j:=1 to c do
                       begin
                        writeln('T[',i,',',j,']=')  ;
                        readln(T[i,j]);
                       end;
end;
//--------------------------------------------------------------------------------------------------------//
//14//
 procedure ecr2real(var t : tb2real ;lig,col:longint );
var
 i ,j :longint ;
begin
 for i :=1 to lig do
    begin
       for j:=1 to col do
           begin
              if j=col then writeln(T[i,j]:7 ,' | ')
              else write(T[i,j]:7,' | ');
           end;
    end ;
end ;
//--------------------------------------------------------------------------------------------------------//
begin
end.
