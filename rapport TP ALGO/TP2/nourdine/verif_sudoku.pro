procedure verif_sudoku(t:grille; var valid:boolean;var v:tab2d; m:longint);
var i,j,k,l,p:longint;
begin
	p:=1;
	for i := 1 to 9 do
	begin
	 	for j := 1 to 9 do
		begin
	 		for k := 1 to 9 do
			begin
	 			for l := 1 to 9 do
				begin
	 				if t[i,j]=t[k,l] then
	 				begin
	 					if (i=k)and(j<>l) or (i<>k)and(j = l) or (k >= (3*(i div 3)+1) and (k<=3*(i div 3)+3) and (l>=(3*(j div 3)+1)) and (l<=(3*(j div 3)+3)) then
						begin
							v[p,1]:=i;
							v[p,2]:=j;
							p:=p+1;
						end;
	 				end;
				end;
	 		end;
	 	end;
	end;
	m:=p-1;
	if m=0 then valid := true
	else true:=false;
end;
