var n,m,i,j,x:integer;
    f:array[0..50,0..50]of int64;
begin
    assign(input,'divide1.in');
    reset(input);
    assign(output,'divide1.out');
    rewrite(output);
    readln(n,m);
    for i:=1 to n do f[i,1]:=1;
    for j:=2 to m do begin
      for i:=j to n do begin
        for x:=1 to i-j+1 do f[i,j]:=f[i,j]+f[i-x,j-1];
      end;
    end;
    writeln(f[n,m]);
    close(input);
    close(output);
end.
