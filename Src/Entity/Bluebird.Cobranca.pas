unit Bluebird.Cobranca;

interface

uses
  System.JSON,
  Bluebird.Interfaces,
  Bluebird.Types,
  System.Generics.Collections;

type

TBluebirdCobranca = class(TInterfacedObject, iBluebirdCobranca)
private
  FClienteAsaas : String;
  FFormaPagamento : TFormaPagamento;
  FValor : Currency;
  FDataVencimento : TDate;
  FDescricao : String;
  FDiasParaCancelamentoBoleto : Int32;
  FReferenciaExterna : String;
  FNumeroParcelas : Int32;
  FValorTotalParcelas : Currency;
  FValorParcela : Currency;
  FDesconto : iBluebirdDesconto;
  FMulta : iBluebirdMulta;
  FServicoPostal : Boolean;
  FDivisao : TList<iBluebirdDivisao>;
  FCallback : iBluebirdCallback;
public
  constructor Create; reintroduce;
  destructor Destroy; override;
  class function New : iBluebirdCobranca;

  function ClienteAsaas(aID : String) : iBluebirdCobranca; overload;
  function ClienteAsaas : String; overload;
  function FormaPagamento(aValor : TFormaPagamento) : iBluebirdCobranca; overload;
  function FormaPagamento : TFormaPagamento; overload;
  function Valor(aValor : Currency) : iBluebirdCobranca; overload;
  function Valor : Currency; overload;
  function DataVencimento(aValor : TDate) : iBluebirdCobranca; overload;
  function DataVencimento : TDate; overload;
  function Descricao(aValor : String) : iBluebirdCobranca; overload;
  function Descricao : String; overload;
  function DiasParaCancelamentoBoleto(aValor : Int32) : iBluebirdCobranca; overload;
  function DiasParaCancelamentoBoleto : Int32; overload;
  function ReferenciaExterna(aValor : String) : iBluebirdCobranca; overload;
  function ReferenciaExterna : String; overload;
  function NumeroParcelas(aValor : Int32) : iBluebirdCobranca; overload;
  function NumeroParcelas : Int32; overload;
  function ValorTotalParcelas(aValor : Currency) : iBluebirdCobranca; overload;
  function ValorTotalParcelas : Currency; overload;
  function ValorParcela(aValor : Currency) : iBluebirdCobranca; overload;
  function ValorParcela : Currency; overload;
  function Desconto(aValor : iBluebirdDesconto) : iBluebirdCobranca; overload;
  function Desconto : iBluebirdDesconto; overload;
  function Multa(aValor : iBluebirdMulta) : iBluebirdCobranca; overload;
  function Multa : iBluebirdMulta; overload;
  function ServicoPostal(aValor : Boolean) : iBluebirdCobranca; overload;
  function ServicoPostal : Boolean; overload;
  function Divisao(aValor : iBluebirdDivisao) : iBluebirdCobranca; overload;
  function Divisao : TList<iBluebirdDivisao>; overload;
  function Callback(aValor : iBluebirdCallback) : iBluebirdCobranca; overload;
  function Callback : iBluebirdCallback; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdCobranca;
  function ToJSON : TJSONObject;
end;

implementation

uses
  Bluebird.Desconto, Bluebird.Multa, Bluebird.Callback, System.SysUtils;

{ TBluebirdCobranca }

constructor TBluebirdCobranca.Create;
begin

  FClienteAsaas := '';
  FFormaPagamento := TFormaPagamento.fp_indefinido;
  FValor := 0.0000;
//  FDataVencimento := nil; { TODO : Dar uma olhada }
  FDescricao := '';
  FDiasParaCancelamentoBoleto := -1;
  FReferenciaExterna := '';
  FNumeroParcelas := -1;
  FValorTotalParcelas := 0.0000;
  FValorParcela := 0.0000;
//  FDesconto := TBluebirdDesconto.New;
//  FMulta := TBluebirdMulta.New;
  FServicoPostal := False;
  FDivisao := TList<iBluebirdDivisao>.Create;
//  FCallback := TBluebirdCallback.New;
end;

destructor TBluebirdCobranca.Destroy;
begin

  inherited;
end;

class function TBluebirdCobranca.New: iBluebirdCobranca;
begin
  Result := TBluebirdCobranca.Create;
end;

function TBluebirdCobranca.ClienteAsaas: String;
begin
  Result := FClienteAsaas;
end;

function TBluebirdCobranca.ClienteAsaas(aID: String): iBluebirdCobranca;
begin
  Result := Self;
  if aID = EmptyStr then raise Exception.Create('ID vazio');
  FClienteAsaas := aID;
end; 

function TBluebirdCobranca.Descricao: String;
begin
  Result := FDescricao;
end;

function TBluebirdCobranca.Descricao(aValor: String): iBluebirdCobranca;
begin
  Result := Self;
  if aValor = EmptyStr then raise Exception.Create('Descrição vazia');
  FDescricao := aValor;
end;     

function TBluebirdCobranca.DiasParaCancelamentoBoleto(aValor: Int32): iBluebirdCobranca;
begin
  Result := Self;
  if aValor <= 0 then raise Exception.Create('Dias para cancelmaneto de boleto inválido');  
  if FFormaPagamento = fp_boleto then
    FDiasParaCancelamentoBoleto := aValor;
end;

function TBluebirdCobranca.DiasParaCancelamentoBoleto: Int32;
begin
  Result := FDiasParaCancelamentoBoleto;
end;
function TBluebirdCobranca.Callback: iBluebirdCallback;
begin
  Result := FCallback;
end;

function TBluebirdCobranca.Callback(aValor: iBluebirdCallback): iBluebirdCobranca;
begin
  Result := Self;
  if not Assigned(aValor) then raise Exception.Create('Callback não definido');
  FCallback := aValor;
end;

function TBluebirdCobranca.DataVencimento(aValor: TDate): iBluebirdCobranca;
begin
  Result := Self;
  FDataVencimento := aValor;
end;

function TBluebirdCobranca.DataVencimento: TDate;
begin
  Result := FDataVencimento;
end;

function TBluebirdCobranca.Desconto(aValor: iBluebirdDesconto): iBluebirdCobranca;
begin
  Result := Self;
  if not Assigned(aValor) then raise Exception.Create('Desconto não definido');
  FDesconto := aValor;
end;

function TBluebirdCobranca.Desconto: iBluebirdDesconto;
begin
  Result := FDesconto;
end;










function TBluebirdCobranca.Divisao: TList<iBluebirdDivisao>;
begin

end;

function TBluebirdCobranca.Divisao(aValor: iBluebirdDivisao): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.FormaPagamento(
  aValor: TFormaPagamento): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.FormaPagamento: TFormaPagamento;
begin

end;

function TBluebirdCobranca.Multa(aValor: iBluebirdMulta): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.Multa: iBluebirdMulta;
begin

end;

function TBluebirdCobranca.NumeroParcelas(aValor: Int32): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.NumeroParcelas: Int32;
begin

end;

function TBluebirdCobranca.ReferenciaExterna: String;
begin

end;

function TBluebirdCobranca.ReferenciaExterna(aValor: String): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.ServicoPostal: Boolean;
begin

end;

function TBluebirdCobranca.ServicoPostal(aValor: Boolean): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.Valor: Currency;
begin

end;

function TBluebirdCobranca.Valor(aValor: Currency): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.ValorParcela: Currency;
begin

end;

function TBluebirdCobranca.ValorParcela(aValor: Currency): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.ValorTotalParcelas(
  aValor: Currency): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.ValorTotalParcelas: Currency;
begin

end;






function TBluebirdCobranca.FromJSON(aValue: TJSONObject): iBluebirdCobranca;
begin

end;

function TBluebirdCobranca.ToJSON: TJSONObject;
begin

end;

end.
