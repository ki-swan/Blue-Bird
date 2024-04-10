unit Bluebird.Types;

interface

type

TTipoPessoa = (PESSOA_FISICA, PESSOA_JURIDICA);

TTipoPessoaHelper = record helper for TTipoPessoa
  function ToString : string;
  class function FromString(aValue : String) : TTipoPessoa; static;
end;


implementation

uses
  System.SysUtils;

{ TTipoPessoaHelper }

class function TTipoPessoaHelper.FromString(aValue: String): TTipoPessoa;
begin
  if UpperCase(aValue) = 'FISICA' then
    Result := PESSOA_FISICA
  else if UpperCase(aValue) = 'JURIDICA' then
    Result := PESSOA_JURIDICA
  else
    raise Exception.Create('Tipo de pessoa inexsitente');
end;

function TTipoPessoaHelper.ToString: string;
begin
  case Self of
    PESSOA_FISICA: result := 'FISICA';
    PESSOA_JURIDICA: Result := 'JURIDICA';
    else raise Exception.Create('Tipo de pessoa inexsitente');
  end;
end;

end.
