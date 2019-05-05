
procedure Affichage(var T:tableau;var v1:longint;var v2:longint);
var i,j:longint;
begin
      for i:=1 to v1 do
     	 begin
     		 writeln;
        	for j:=1 to v2 do
        		begin
      				if (detect_par_ligne(i,j,v1,v2,T) or detect_par_colonne(i,j,v1,v2,T) or detect_par_region(i,j,T) then
     					 begin
      						textcolor(red);
      						write(' | ',T[i,j]);
      					 end
    					 else
      						begin
      							textcolor(white);
      							write(' | ',T[i,j]);
   						    end;
      			end;
      	 end;
      readln;
end;



