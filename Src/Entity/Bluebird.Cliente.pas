unit Bluebird.Cliente;

interface

uses
  Bluebird.Interfaces, System.JSON, Bluebird.Types;

type

TBluebirdCliente = class(TInterfacedObject, iBluebirdCliente)
strict protected
  Fname: string;
  FcpfCnpj: string;
  Femail: string;
  Fphone: string;
  FmobilePhone: string;
  Faddress: string;
  FaddressNumber: string;
  Fcomplement: string;
  Fprovince: string;
  FpostalCode: string;
  FexternalReference: string;
  FnotificationDisabled : Boolean;
  FmunicipalInscription : string;
  FstateInscription : string;
  Fobservations : string;
  FgroupName : string;
  Fcompany : string;

  Fid : string;
  FdateCreated : TDate;
  Fcity : Integer;
  Fstate : string;
  Fcountry : string;
  FpersonType : TPessoa;
  Fdeleted : Boolean;
public
  constructor Create; reintroduce;
  destructor Destroy; override;
  class function New : iBluebirdCliente;

  function name: string; overload;
  function name(aValue : string) : iBluebirdCliente; overload;
  function cpfCnpj: string; overload;
  function cpfCnpj(aValue : string) : iBluebirdCliente; overload;
  function email: string; overload;
  function email(aValue : string) : iBluebirdCliente; overload;
  function phone: string; overload;
  function phone(aValue : string) : iBluebirdCliente; overload;
  function mobilePhone: string; overload;
  function mobilePhone(aValue : string) : iBluebirdCliente; overload;
  function address: string; overload;
  function address(aValue : string) : iBluebirdCliente; overload;
  function addressNumber: string; overload;
  function addressNumber(aValue : string) : iBluebirdCliente; overload;
  function complement: string; overload;
  function complement(aValue : string) : iBluebirdCliente; overload;
  function province: string; overload;
  function province(aValue : string) : iBluebirdCliente; overload;
  function postalCode: string; overload;
  function postalCode(aValue : string) : iBluebirdCliente; overload;
  function externalReference: string; overload;
  function externalReference(aValue : string) : iBluebirdCliente; overload;
  function notificationDisabled : Boolean; overload;
  function notificationDisabled(aValue : Boolean) : iBluebirdCliente; overload;
  function municipalInscription : string; overload;
  function municipalInscription(aValue : string) : iBluebirdCliente; overload;
  function stateInscription : string; overload;
  function stateInscription(aValue : string) : iBluebirdCliente; overload;
  function observations : string; overload;
  function observations(aValue : string) : iBluebirdCliente; overload;
  function groupName : string; overload;
  function groupName(aValue : string) : iBluebirdCliente; overload;
  function company : string; overload;
  function company(aValue : string) : iBluebirdCliente; overload;

  function id : string;
  function dateCreated : TDate;
  function city : Integer;
  function state : string;
  function country : string;
  function personType : TPessoa;
  function deleted : Boolean;

  function ToJSON : TJSONObject;
  function FromJSON(aValue : TJSONObject) : iBluebirdCliente;
end;

implementation

{ TBluebirdCliente }

constructor TBluebirdCliente.Create;
begin
  Fname := '';
  FcpfCnpj := '';
  Femail := '';
  Fphone := '';
  FmobilePhone := '';
  Faddress := '';
  FaddressNumber := '';
  Fcomplement := '';
  Fprovince := '';
  FpostalCode := '';
  FexternalReference := '';
  FnotificationDisabled := False;
  FmunicipalInscription := '';
  FstateInscription := '';
  Fobservations := '';
  FgroupName := '';
  Fcompany := '';
end;

destructor TBluebirdCliente.Destroy;
begin

  inherited;
end;

class function TBluebirdCliente.New: iBluebirdCliente;
begin
  Result := TBluebirdCliente.Create;
end;





function TBluebirdCliente.dateCreated: TDate;
begin

end;

function TBluebirdCliente.deleted: Boolean;
begin

end;

function TBluebirdCliente.address(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.address: string;
begin

end;

function TBluebirdCliente.addressNumber(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.addressNumber: string;
begin

end;

function TBluebirdCliente.city: Integer;
begin

end;

function TBluebirdCliente.company(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.company: string;
begin

end;

function TBluebirdCliente.complement: string;
begin

end;

function TBluebirdCliente.complement(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.country: string;
begin

end;

function TBluebirdCliente.cpfCnpj(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.cpfCnpj: string;
begin

end;

function TBluebirdCliente.email(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.email: string;
begin

end;

function TBluebirdCliente.externalReference(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.FromJSON(aValue: TJSONObject): iBluebirdCliente;
begin

end;

function TBluebirdCliente.externalReference: string;
begin

end;

function TBluebirdCliente.groupName: string;
begin

end;

function TBluebirdCliente.groupName(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.id: string;
begin

end;

function TBluebirdCliente.mobilePhone(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.mobilePhone: string;
begin

end;

function TBluebirdCliente.municipalInscription(
  aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.municipalInscription: string;
begin

end;

function TBluebirdCliente.name(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.name: string;
begin

end;

function TBluebirdCliente.notificationDisabled: Boolean;
begin

end;

function TBluebirdCliente.notificationDisabled(
  aValue: Boolean): iBluebirdCliente;
begin

end;

function TBluebirdCliente.observations: string;
begin

end;

function TBluebirdCliente.observations(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.phone: string;
begin

end;

function TBluebirdCliente.personType: TPessoa;
begin

end;

function TBluebirdCliente.phone(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.postalCode: string;
begin

end;

function TBluebirdCliente.postalCode(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.province: string;
begin

end;

function TBluebirdCliente.province(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.state: string;
begin

end;

function TBluebirdCliente.stateInscription(aValue: string): iBluebirdCliente;
begin

end;

function TBluebirdCliente.ToJSON: TJSONObject;
begin

end;

function TBluebirdCliente.stateInscription: string;
begin

end;

end.
