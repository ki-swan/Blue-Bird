unit Bluebird.Types;

interface

type

TFormaPagamento = (fp_indefinido, fp_boleto, fp_cartao, fp_pix);

TFormaPagamentoHelper = record helper for TFormaPagamento
  function ToString : string;
  class function FromString(aValue : String) : TFormaPagamento; static;
end;

TTipoValor = (tv_none, tv_fixo, tv_porcentagem);

TTipoValorHelper = record helper for TTipoValor
  function ToString : string;
  class function FromString(aValue : String) : TTipoValor; static;
end;

implementation

{ TTipoMultaHelper }

class function TTipoValorHelper.FromString(aValue: String): TTipoValor;
begin
  if aValue = 'FIXED' then Result := tv_fixo
  else if aValue = 'PERCENTAGE' then Result := tv_porcentagem
  else Result := tv_none;
end;

function TTipoValorHelper.ToString: string;
begin
  case Self of
    tv_fixo: Result := 'FIXED';
    tv_porcentagem: Result := 'PERCENTAGE';
    else Result := '';
  end;
end;

{ TFormaPagamentoHelper }

class function TFormaPagamentoHelper.FromString(aValue: String): TFormaPagamento;
begin
  if aValue = 'UNDEFINED' then Result := fp_indefinido
  else if aValue = 'BOLETO' then Result := fp_boleto
  else if aValue = 'CREDIT_CARD' then Result := fp_cartao
  else if aValue = 'PIX' then Result := fp_pix
  else Result := fp_indefinido;
end;

function TFormaPagamentoHelper.ToString: string;
begin
  case Self of
    fp_boleto: Result := 'BOLETO';
    fp_cartao: Result := 'CREDIT_CARD';
    fp_pix: Result := 'PIX';
    else Result := 'UNDEFINED';
  end;
end;

end.
