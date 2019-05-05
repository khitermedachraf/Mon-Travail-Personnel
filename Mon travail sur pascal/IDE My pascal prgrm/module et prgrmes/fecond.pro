

procedure fecond(n:longint; var suite:tab1;var taille:longint);
(* donne la suite de fecondite de n et sa fecondite(taille)*)
var s:longint;
{$i c:\algo\freq_ch.fon}
{$i c:\algo\prodch.fon}

begin
taille:=1;
suite[1]:=n;
while freq_ch(n,0) =0 do
  begin
  taille:=taille+1;
  s:=n + prodch(n);
  n:=s;
  suite[taille]:=s;
  end;
end;




