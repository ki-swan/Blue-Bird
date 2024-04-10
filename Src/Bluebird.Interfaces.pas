unit Bluebird.Interfaces;

interface

uses
  System.Generics.Collections, System.JSON, Bluebird.Types;

type

iBluebirdCliente = interface
['{1FD3FE2E-C283-41BA-A788-3AD8DA6DE359}']
  function objeto : String;
  function id : String;
  function dataCriado : TDateTime;
  function cidade : String;
  function estado : String;
  function pais : String;
  function tipoPessoa : TTipoPessoa;
  function deletado : Boolean;

  function nome : String; overload;
  function nome(aValue : String) : iBluebirdCliente; overload;
  function cpfCnpj : String; overload;
  function cpfCnpj(aValue : String) : iBluebirdCliente; overload;
  function email : String; overload;
  function email(aValue : String) : iBluebirdCliente; overload;
  function telefone : String; overload;
  function telefone(aValue : String) : iBluebirdCliente; overload;
  function celular : String; overload;
  function celular(aValue : String) : iBluebirdCliente; overload;
  function endereco : String; overload;
  function endereco(aValue : String) : iBluebirdCliente; overload;
  function enderecoNumero : String; overload;
  function enderecoNumero(aValue : String) : iBluebirdCliente; overload;
  function complemento : String; overload;
  function complemento(aValue : String) : iBluebirdCliente; overload;
  function bairro : String; overload;
  function bairro(aValue : String) : iBluebirdCliente; overload;
  function cep : String; overload;
  function cep(aValue : String) : iBluebirdCliente; overload;
  function referenciaExterna : String; overload;
  function referenciaExterna(aValue : String) : iBluebirdCliente; overload;
  function notificacaoDesabilitada : Boolean; overload;
  function notificacaoDesabilitada(aValue : Boolean) : iBluebirdCliente; overload;
  function emailsAdicionais : TList<String>; overload;
  function adicionarEmail(aValue : String) : iBluebirdCliente; overload;
  function InscricaoMunicipal : String; overload;
  function InscricaoMunicipal(aValue : String) : iBluebirdCliente; overload;
  function InscricaoEstadual : String; overload;
  function InscricaoEstadual(aValue : String) : iBluebirdCliente; overload;
  function observacoes : String; overload;
  function observacoes(aValue : String) : iBluebirdCliente; overload;
  function nomeGrupo : String; overload;
  function nomeGrupo(aValue : String) : iBluebirdCliente; overload;
  function empresa : String; overload;
  function empresa(aValue : String) : iBluebirdCliente; overload;

  function ToJSON : TJSONObject;
  function FromJSON(aValue : TJSONObject) : iBluebirdCliente;
end;

iBluebird = interface
['{60CB596A-8057-402E-A0E9-99857EE86284}']
  function incluir_cliente(aValue : iBluebirdCliente) : iBluebirdCliente;
  function consultar_cliente(aID : String) : iBluebirdCliente; overload;
  function consultar_cliente(aName : String = ''; aEmail : String = ''; cpfCnpj : String = ''; groupName : String = ''; externalReference : String = ''; limit : Integer = 10) : TList<iBluebirdCliente>; overload;
end;

iBluebirdFactory = interface
['{46E48D52-733B-419D-A1B5-7004A9B1EA0F}']
  function bluebird : iBluebird;
  function cliente : iBluebirdCliente;
end;

implementation

end.
