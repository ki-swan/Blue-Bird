unit Bluebird.Clientes.Interfaces;

interface

uses
  Bluebird.Clientes.types, System.JSON;

type


iBluebirdCliente = interface
['{73E18CED-6702-4285-A58F-00BCA1D632A6}']
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

end.
