unit Bluebird.Types;

interface

type

TPessoa = (tp_indefinido, tp_fisica, tp_juridica);

TPessoaHelper = record helper for TPessoa
  function ToString : string;
  class function FromString(aValue : String) : TPessoa; static;
end;

implementation

uses
  System.SysUtils;

{ TPessoaHelper }

class function TPessoaHelper.FromString(aValue: String): TPessoa;
begin
  if aValue = 'FISICA' then Result := tp_fisica
  else if aValue = 'JURIDICA' then Result := tp_juridica
  else raise Exception.Create('op��o de tipo de pessoa inv�lida');
end;

function TPessoaHelper.ToString: string;
begin
  case Self of
    tp_fisica: Result := 'FISICA';
    tp_juridica: Result := 'JURIDICA';
    else raise Exception.Create('op��o de tipo de pessoa inv�lida');
  end;
end;

end.
