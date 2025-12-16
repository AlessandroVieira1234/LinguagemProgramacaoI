program Pandigital;

var
  n, digito: integer;
  usado: array[0..9] of integer;
  pandigital: boolean;
  i: integer;

begin
  readln(n);

  for i := 0 to 9 do
    usado[i] := 0;

  pandigital := true;

  while n > 0 do
  begin
    digito := n mod 10;

    if usado[digito] = 1 then
    begin
      pandigital := false;
      break;
    end;

    usado[digito] := 1;
    n := n div 10;
  end;

  if pandigital then
    writeln('O numero e pandigital')
  else
    writeln('O numero nao e pandigital');
end.