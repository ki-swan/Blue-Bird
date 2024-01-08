unit Bluebird.Callback;

interface

uses
  Bluebird.Interfaces, System.JSON;

type

TBluebirdCallback = class(TInterfacedObject, iBluebirdCallback)
private
  FSucessoURL : String;
  FAutoRedirecionar : Boolean;
public
  constructor Create; reintroduce;
  destructor Destroy; override;
  class function New : iBluebirdCallback;

  function SucessoURL(aValor : String) : iBluebirdCallback; overload;
  function SucessoURL : String; overload;
  function AutoRedirecionar(aValor : Boolean) : iBluebirdCallback; overload;
  function AutoRedirecionar : Boolean; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdCallback;
  function ToJSON : TJSONObject;
end;

implementation

uses
  System.SysUtils;

{ TBluebirdCallback }

constructor TBluebirdCallback.Create;
begin
  FSucessoURL := '';
  FAutoRedirecionar := False;
end;

destructor TBluebirdCallback.Destroy;
begin

  inherited;
end;

class function TBluebirdCallback.New: iBluebirdCallback;
begin
  Result := TBluebirdCallback.Create;
end;

function TBluebirdCallback.AutoRedirecionar(aValor: Boolean): iBluebirdCallback;
begin
  Result := Self;
  FAutoRedirecionar := aValor;
end;

function TBluebirdCallback.AutoRedirecionar: Boolean;
begin
  Result := FAutoRedirecionar;
end;

function TBluebirdCallback.SucessoURL(aValor: String): iBluebirdCallback;
begin
  Result := Self;
  if aValor = EmptyStr then raise Exception.Create('SucessoURL vazio');
  FSucessoURL := aValor;
end;

function TBluebirdCallback.SucessoURL: String;
begin
  Result := FSucessoURL;
end;

function TBluebirdCallback.ToJSON: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('successUrl', FSucessoURL);
  Result.AddPair('autoRedirect', FAutoRedirecionar);
end;

function TBluebirdCallback.FromJSON(aValue: TJSONObject): iBluebirdCallback;
begin
  Result := Self;
  aValue.TryGetValue<String>('successUrl', FSucessoURL);
  aValue.TryGetValue<Boolean>('autoRedirect', FAutoRedirecionar);
end;

end.
