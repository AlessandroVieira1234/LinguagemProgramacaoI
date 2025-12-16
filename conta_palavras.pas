program ContaPalavras;

var
  frase: string;
  i, cont: integer;
  dentroPalavra: boolean;

begin
  readln(frase);

  cont := 0;
  dentroPalavra := false;

  for i := 1 to length(frase) do
  begin
    if frase[i] <> ' ' then
    begin
      if not dentroPalavra then
      begin
        cont := cont + 1;
        dentroPalavra := true;
      end;
    end
    else
      dentroPalavra := false;
  end;

  writeln('Quantidade de palavras: ', cont);
end.