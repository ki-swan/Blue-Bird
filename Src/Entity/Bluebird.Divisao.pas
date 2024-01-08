unit Bluebird.Divisao;

interface

uses
  Bluebird.Interfaces, System.JSON;

type

TBluebirdDivisao = class(TInterfacedObject, iBluebirdDivisao)
private
  FIdentificadorCarteira : String;
  FValorFixo : Currency;
  FValorPercentual : Double;
  FValorFixoTotal : Currency;
public
  constructor Create; reintroduce;
  destructor Destroy; override;
  class function New : iBluebirdDivisao;

  function IdentificadorCarteira(aValor : String) : iBluebirdDivisao; overload;
  function IdentificadorCarteira : String; overload;
  function ValorFixo(aValue : Currency) : iBluebirdDivisao; overload;
  function ValorFixo : Currency; overload;
  function ValorPercentual(aPorcentagem : Double) : iBluebirdDivisao; overload;
  function ValorPercentual : Double; overload;
  function ValorFixoTotal(aValue : Currency) : iBluebirdDivisao; overload;
  function ValorFixoTotal : Currency; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdDivisao;
  function ToJSON : TJSONObject;
end;

implementation

{ TBluebirdDivisao }

constructor TBluebirdDivisao.Create;
begin
  FIdentificadorCarteira := '';
  FValorFixo := 0.00;
  FValorPercentual := 0.00;
  FValorFixoTotal := 0.00;
end;

destructor TBluebirdDivisao.Destroy;
begin

  inherited;
end;

class function TBluebirdDivisao.New: iBluebirdDivisao;
begin
  Result := TBluebirdDivisao.Create;
end;






function TBluebirdDivisao.IdentificadorCarteira: String;
begin

end;

function TBluebirdDivisao.IdentificadorCarteira(aValor: String): iBluebirdDivisao;
begin

end;

function TBluebirdDivisao.ValorFixo: Currency;
begin

end;

function TBluebirdDivisao.ValorFixo(aValue: Currency): iBluebirdDivisao;
begin

end;

function TBluebirdDivisao.ValorFixoTotal: Currency;
begin

end;

function TBluebirdDivisao.ValorFixoTotal(aValue: Currency): iBluebirdDivisao;
begin

end;

function TBluebirdDivisao.ValorPercentual: Double;
begin

end;

function TBluebirdDivisao.ValorPercentual(aPorcentagem: Double): iBluebirdDivisao;
begin

end;




function TBluebirdDivisao.ToJSON: TJSONObject;
begin
  Result := TJSONObject.Create;
//  Result.AddPair('walletId', FIdentificadorCarteira);
//  Result.AddPair('fixedValue', FIdentificadorCarteira);
//  Result.AddPair('walletId', FIdentificadorCarteira);
//  Result.AddPair('walletId', FIdentificadorCarteira);
end;

function TBluebirdDivisao.FromJSON(aValue: TJSONObject): iBluebirdDivisao;
begin

//  FIdentificadorCarteira : String;
//  FValorFixo : Currency;
//  FValorPercentual : Double;
//  FValorFixoTotal : Currency;
end;

end.
