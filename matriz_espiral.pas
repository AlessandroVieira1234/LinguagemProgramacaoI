program MatrizEspiral;

var
  m: array[1..9, 1..9] of integer;
  n, valor: integer;
  topo, base, esquerda, direita: integer;
  i, j: integer;

begin
  readln(n);

  topo := 1;
  base := n;
  esquerda := 1;
  direita := n;
  valor := 1;

  while valor <= n * n do
  begin
    { esquerda para direita }
    for j := esquerda to direita do
    begin
      m[topo, j] := valor;
      valor := valor + 1;
    end;
    topo := topo + 1;

    { cima para baixo }
    for i := topo to base do
    begin
      m[i, direita] := valor;
      valor := valor + 1;
    end;
    direita := direita - 1;

    { direita para esquerda }
    for j := direita downto esquerda do
    begin
      m[base, j] := valor;
      valor := valor + 1;
    end;
    base := base - 1;

    { baixo para cima }
    for i := base downto topo do
    begin
      m[i, esquerda] := valor;
      valor := valor + 1;
    end;
    esquerda := esquerda + 1;
  end;

  { Exibe a matriz }
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(m[i, j]:4);
    writeln;
  end;
end.