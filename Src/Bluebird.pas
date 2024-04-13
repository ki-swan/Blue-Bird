unit Bluebird;

interface

uses
  Bluebird.Interfaces, System.Generics.Collections;

type

TBluebird = class(TInterfacedObject, iBluebird)
public
  constructor Create; reintroduce;
  destructor Destroy; override;
  class function New :  iBluebird;

  function incluir_cliente(aValue : iBluebirdCliente) : iBluebirdCliente;
  function consultar_cliente(aID : String) : iBluebirdCliente; overload;
  function consultar_cliente(aName : String = ''; aEmail : String = ''; cpfCnpj : String = ''; groupName : String = ''; externalReference : String = ''; limit : Integer = 10) : TList<iBluebirdCliente>; overload;
end;

implementation

{ TBluebird }

constructor TBluebird.Create;
begin

end;

destructor TBluebird.Destroy;
begin

  inherited;
end;

class function TBluebird.New: iBluebird;
begin
  Result := TBluebird.Create;
end;

function TBluebird.consultar_cliente(aID: String): iBluebirdCliente;
begin

end;

function TBluebird.consultar_cliente(aName, aEmail, cpfCnpj, groupName, externalReference: String; limit: Integer): TList<iBluebirdCliente>;
begin

end;

function TBluebird.incluir_cliente(aValue: iBluebirdCliente): iBluebirdCliente;
begin

end;

end.
