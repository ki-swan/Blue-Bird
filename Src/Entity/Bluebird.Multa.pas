unit Bluebird.Multa;

interface

uses
  Bluebird.Interfaces, Bluebird.Types, System.JSON;

type
TBluebirdMulta = class(TInterfacedObject, iBluebirdMulta)
private
  FValor : Double;
  FTipo : TTipoValor;
public
  constructor Create; reintroduce; overload;
  constructor Create(aValor : Double; aTipo : TTipoValor); reintroduce; overload;
  destructor Destroy; override;
  class function New : iBluebirdMulta; overload;
  class function New(aPorcentagem : Double; aTipo : TTipoValor) : iBluebirdMulta; overload;

  function Valor(aValor : Double) : iBluebirdMulta; overload;
  function Valor : Double; overload;
  function Tipo(aValue : TTipoValor) : iBluebirdMulta; overload;
  function Tipo : TTipoValor; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdMulta;
  function ToJSON : TJSONObject;
end;

implementation

uses
  System.SysUtils;

{ TBluebirdMulta }

constructor TBluebirdMulta.Create;
begin
  FValor := 0.00;
  FTipo := tv_none;
end;

constructor TBluebirdMulta.Create(aValor: Double; aTipo: TTipoValor);
begin
  FValor := aValor;
  FTipo := aTipo;
end;

destructor TBluebirdMulta.Destroy;
begin

  inherited;
end;

class function TBluebirdMulta.New: iBluebirdMulta;
begin
  Result := TBluebirdMulta.Create;
end;

class function TBluebirdMulta.New(aPorcentagem: Double; aTipo: TTipoValor): iBluebirdMulta;
begin
  Result := TBluebirdMulta.Create(aPorcentagem, aTipo);
end;

function TBluebirdMulta.Tipo(aValue: TTipoValor): iBluebirdMulta;
begin
  Result := Self;
  FTipo := aValue;
end;

function TBluebirdMulta.Tipo: TTipoValor;
begin
  Result := FTipo;
end;

function TBluebirdMulta.Valor(aValor: Double): iBluebirdMulta;
begin
  Result := Self;
  FValor := aValor;
end;

function TBluebirdMulta.Valor: Double;
begin
  Result := FValor;
end;

function TBluebirdMulta.ToJSON: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('value', FValor);
  Result.AddPair('type', FTipo.ToString);
end;

function TBluebirdMulta.FromJSON(aValue: TJSONObject): iBluebirdMulta;
var
  lType : String;
begin
  Result := Self;
  aValue.TryGetValue<Double>('value', FValor);
  if aValue.TryGetValue<String>('type', lType) then
    FTipo.FromString(lType);
end;

end.
