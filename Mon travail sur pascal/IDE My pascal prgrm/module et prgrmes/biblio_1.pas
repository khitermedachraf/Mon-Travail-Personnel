UNIT biblio_1;

INTERFACE
function ext_g(n,x:longint):longint;
function nb_pos(n:longint):longint;
function puiss (a,n:longint):longint;
function somdiv (n :longint):longint;

IMPLEMENTATION

function ext_g(n,x:longint):longint;
BEGIN
ext_g:=n div puiss(10,nb_pos(n)-x);
END;


function nb_pos(n:longint):longint;
var i : longint;
begin
i:=1;
while n div 10 <> 0 do
begin
i:=i+1;
n:=n div 10;
end;
nb_pos:=i;
end;

function somdiv (n :longint):longint;
var i,d:longint;
//----------------------------------------------------------
// role: calculer la somme des diviseurs de n sauf lui_meme
//----------------------------------------------------------
BEGIN
d:=0;
for i:=1 to n div 2 do
if n mod i =0 then d:=d+i;
somdiv:=d;
END;

function puiss (a,n:longint):longint;
var i,res : longint;
begin
res:=1;
for i:=1 to n do res:=res*a;
puiss:=res;
end;
END.
