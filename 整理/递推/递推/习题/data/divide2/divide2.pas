var ch:char;
    n,m,i,j:integer;
    f:array[0..60,0..60]of int64;
begin
  for ch:='0' to '9' do begin
    assign(input,'divide2'+ch+'.in');
    reset(input);
    assign(output,'divide2'+ch+'.out');
    rewrite(output);
    readln(n,m);
    f[1,0]:=1;
    f[1,1]:=1;
    for i:=2 to n+m-1 do begin
      f[i,0]:=1;
      for j:=1 to m-1 do f[i,j]:=f[i-1,j-1]+f[i-1,j];
    end;
    writeln(f[n+m-1,m-1]);
    close(input);
    close(output);
  end;
end.