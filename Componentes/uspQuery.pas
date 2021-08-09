unit uspQuery;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, System.StrUtils;

type
  TspQuery = class(TFDQuery)
  public
    spCondicoes: String;
    spColunas: String;
    spTabelas: String;
    function GeraSQL: String;
  end;

implementation

{ TspQuery }

function TspQuery.GeraSQL: String;
var
  psColunas, psCondicoes, psAux: String;
begin

  Self.SQL.Clear;

  { Somente uma Tabela permitida. }
  if Pos(',', Self.spTabelas) > 0 then
  begin

    Result := '1';
    Exit;

  end;

  { Define as Colunas. }
  psAux := '';
  psColunas := Self.spColunas;

  if Trim(psColunas) <> '' then
  begin

    while Pos(',', psColunas) > 0 do
    begin

      psAux := psAux + Self.spTabelas + '.' + Copy(psColunas, 1, Pos(',', psColunas) - 1) + ',';
      psColunas := Copy(psColunas, Pos(',', psColunas) + 1, Length(psColunas));

    end;

    if psColunas <> '' then
      psAux := psAux + Self.spTabelas + '.' + psColunas
    else if psAux[Length(psAux)] = ',' then
      psAux[Length(psAux)] := #0;

  end

  else
    psAux := Self.spTabelas + '.*';

  psColunas := psAux;

  { Define cláusula Where. }
  psAux := '';

  if Trim(Self.spCondicoes) <> '' then
  begin

    psCondicoes := Self.spCondicoes;

    while Pos(',', psCondicoes) > 0 do
    begin

      psAux := psAux + IfThen(psAux <> '', ' AND ') + Copy(psCondicoes, 1, Pos(',', psCondicoes) - 1);
      psCondicoes := Copy(psCondicoes, Pos(',', psCondicoes) + 1, Length(psCondicoes));

    end;

    if psCondicoes <> '' then
      psAux := psAux + IfThen(psAux <> '', ' AND ') + psCondicoes;

  end;

  Result := 'SELECT ' + psColunas + ' FROM ' + Self.spTabelas + IfThen(psCondicoes <> '', ' WHERE ' + psCondicoes);
  Self.SQL.Text := Result;

end;

end.
