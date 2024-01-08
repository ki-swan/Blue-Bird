unit Bluebird.Desconto;

interface

uses
  Bluebird.Interfaces, Bluebird.Types, System.JSON;

type

TBluebirdDesconto = class(TInterfacedObject, iBluebirdDesconto)
private
  FValor : Int64;
  FDiasAntesDoVencimento : Int32;
  FTipo : TTipoValor;
public
  constructor Create; reintroduce;
  destructor Destroy; override;
  class function New : iBluebirdDesconto; overload;

  function Valor(aValue : Int64) : iBluebirdDesconto; overload;
  function Valor : Int64; overload;
  function DiasAntesDoVencimento(aValue : Int32) : iBluebirdDesconto; overload;
  function DiasAntesDoVencimento : Int32; overload;
  function Tipo(aValue : TTipoValor) : iBluebirdDesconto; overload;
  function Tipo : TTipoValor; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdDesconto;
  function ToJSON : TJSONObject;
end;

implementation

{ TBluebirdDesconto }

constructor TBluebirdDesconto.Create;
begin
  FValor := 0;
  FDiasAntesDoVencimento := 0;
  FTipo := TTipoValor.tv_none;
end;

destructor TBluebirdDesconto.Destroy;
begin

  inherited;
end;

class function TBluebirdDesconto.New: iBluebirdDesconto;
begin
  Result := TBluebirdDesconto.Create;
end;

function TBluebirdDesconto.DiasAntesDoVencimento: Int32;
begin
  Result := FDiasAntesDoVencimento;
end;

function TBluebirdDesconto.DiasAntesDoVencimento(aValue: Int32): iBluebirdDesconto;
begin
  Result := Self;
  FDiasAntesDoVencimento := aValue;
end;

function TBluebirdDesconto.Tipo(aValue: TTipoValor): iBluebirdDesconto;
begin
  Result := Self;
  FTipo := aValue;
end;

function TBluebirdDesconto.Tipo: TTipoValor;
begin
  Result := FTipo;
end;

function TBluebirdDesconto.Valor(aValue: Int64): iBluebirdDesconto;
begin
  Result := Self;
  FValor := aValue;
end;

function TBluebirdDesconto.Valor: Int64;
begin
  Result := FValor;
end;

function TBluebirdDesconto.ToJSON: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('dueDateLimitDays', FDiasAntesDoVencimento);
  Result.AddPair('value', FValor);
  Result.AddPair('type', FTipo.ToString);
end;

function TBluebirdDesconto.FromJSON(aValue: TJSONObject): iBluebirdDesconto;
var
  lTipo : String;
begin
  Result := Self;
  aValue.TryGetValue<Int32>('dueDateLimitDays', FDiasAntesDoVencimento);
  aValue.TryGetValue<Int64>('value', FValor);
  if aValue.TryGetValue<String>('type', lTipo) then
    FTipo.FromString(lTipo);
end;

end.
