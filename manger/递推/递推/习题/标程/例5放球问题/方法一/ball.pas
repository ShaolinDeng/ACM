var n,r,i,j:integer;
    f:array[1..20,1..20]of int64;
begin
  assign(input,'ball.in');
  reset(input);
  assign(output,'ball.out');
  rewrite(output);
  readln(n,r);
  f[1,1]:=1;
  for i:=2 to n do begin
    f[i,1]:=1;
    for j:=2 to i do begin
      f[i,j]:=f[i-1,j-1]+f[i-1,j]*j;
    end;
  end;
  writeln(f[n,r]);
  close(input);
  close(output);
end.
