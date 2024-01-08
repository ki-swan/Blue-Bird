unit Bluebird.Juros;

interface

uses
  Bluebird.Interfaces, System.JSON;

type

TBluebirdJuros = class(TInterfacedObject, iBluebirdJuros)
private
  FValorAoMes : Double;
public
  constructor Create; reintroduce; overload;
  constructor Create(aPorcentagem : Double); reintroduce; overload;
  destructor Destroy; override;
  class function New : iBluebirdJuros; overload;
  class function New(aPorcentagem : Double) : iBluebirdJuros; overload;

  function ValorAoMes(aPorcentagem : Double) : iBluebirdJuros; overload;
  function ValorAoMes : Double; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdJuros;
  function ToJSON : TJSONObject;
end;

implementation

{ TBluebirdJuros }

constructor TBluebirdJuros.Create;
begin
  FValorAoMes := 0.00;
end;

constructor TBluebirdJuros.Create(aPorcentagem: Double);
begin
  FValorAoMes := aPorcentagem;
end;

destructor TBluebirdJuros.Destroy;
begin

  inherited;
end;

class function TBluebirdJuros.New(aPorcentagem: Double): iBluebirdJuros;
begin
  Result := TBluebirdJuros.Create(aPorcentagem);
end;

class function TBluebirdJuros.New: iBluebirdJuros;
begin
  Result := TBluebirdJuros.Create;
end;

function TBluebirdJuros.ValorAoMes(aPorcentagem: Double): iBluebirdJuros;
begin
  Result := Self;
  FValorAoMes := aPorcentagem;
end;

function TBluebirdJuros.ValorAoMes: Double;
begin
  Result := FValorAoMes;
end;

function TBluebirdJuros.ToJSON: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('value', FValorAoMes);
end;

function TBluebirdJuros.FromJSON(aValue: TJSONObject): iBluebirdJuros;
begin
  Result := Self;
  aValue.TryGetValue<Double>('value', FValorAoMes);
end;

end.
