program VetorNumeros;

var
  v: array[1..10] of integer;
  i: integer;
  maior, menor: integer;
  soma: integer;
  media: real;

begin
  randomize;

  for i := 1 to 10 do
  begin
    v[i] := random(100) + 1;
    writeln('Elemento ', i, ': ', v[i]);
  end;

  maior := v[1];
  menor := v[1];
  soma := 0;

  for i := 1 to 10 do
  begin
    soma := soma + v[i];

    if v[i] > maior then
      maior := v[i];

    if v[i] < menor then
      menor := v[i];
  end;

  media := soma / 10;

  writeln('Maior valor: ', maior);
  writeln('Menor valor: ', menor);
  writeln('Media: ', media:0:2);
end.