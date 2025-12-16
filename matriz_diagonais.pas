program MatrizDiagonais;

var
  m: array[1..15, 1..15] of integer;
  n, i, j: integer;
  somaPrincipal, somaSecundaria: integer;

begin
  readln(n);

  randomize;

  for i := 1 to n do
    for j := 1 to n do
    begin
      m[i, j] := random(10) + 1;
      write(m[i, j]:4);
    end;

  writeln;

  somaPrincipal := 0;
  somaSecundaria := 0;

  for i := 1 to n do
  begin
    somaPrincipal := somaPrincipal + m[i, i];
    somaSecundaria := somaSecundaria + m[i, n - i + 1];
  end;

  writeln('Soma da diagonal principal: ', somaPrincipal);
  writeln('Soma da diagonal secundaria: ', somaSecundaria);
end.