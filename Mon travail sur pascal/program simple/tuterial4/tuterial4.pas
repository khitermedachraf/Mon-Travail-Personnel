program user;
uses crt;
var
fname : string;
lname : string;
num1  : integer ;
num2  : integer ;
begin
clrscr;
write('First name :  ');
readln (fname);
writeln;
writeln;
write ('last name :  ');
readln (lname);
writeln;
writeln;
write(' nice to meet you  : ',fname,' ',lname);
writeln;
writeln;
write(' enter first integer  :  ');
readln(num1);
writeln;
writeln;
write('enter second integer  :  ');
readln(num2);
writeln;
writeln;
write(' the sum of integers is : ', num1 + num2 );
writeln;
writeln;
writeln(' press < any key > to quit ');
readln;
end.
