var n,i,j:integer;
    f:array[0..10,0..10]of int64;
    g:array[0..10]of int64;
begin
    assign(input,'lineup.in');
    reset(input);
    assign(output,'lineup.out');
    rewrite(output);
    readln(n);
    g[0]:=1;
    for i:=1 to n do g[i]:=g[i-1]*i;
    fillchar(f,sizeof(f),0);
    for i:=1 to n do f[i,0]:=1;
    f[1,1]:=1;
    for i:=2 to n do begin
      for j:=1 to i do begin
        f[i,j]:=f[i-1,j]+f[i,j-1];
      end;
    end;
    writeln(f[n,n]*g[n]*g[n]);
    close(input);
    close(output);
end.