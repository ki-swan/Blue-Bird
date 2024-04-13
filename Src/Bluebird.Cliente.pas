unit Bluebird.Cliente;

interface

uses
  Bluebird.Interfaces, Bluebird.Types, System.Generics.Collections,
  System.JSON;

type

TBluebirdCliente = class(TInterfacedObject, iBluebirdCliente)
private
  Fobjeto : String;
  Fid : String;
  FdataCriado : TDateTime;
  Fcidade : String;
  Festado : String;
  Fpais : String;
  FtipoPessoa : TTipoPessoa;
  Fdeletado : Boolean;

  Fnome : String;
  FcpfCnpj : String;
  Femail : String;
  Ftelefone : String;
  Fcelular : String;
  Fendereco : String;
  FenderecoNumero : String;
  Fcomplemento : String;
  Fbairro : String;
  Fcep : String;
  FreferenciaExterna : String;
  FnotificacaoDesabilitada : Boolean;
  FemailsAdicionais : TList<String>;
  FInscricaoMunicipal : String;
  FInscricaoEstadual : String;
  Fobservacoes : String;
  FnomeGrupo : String;
  Fempresa : String;
public
  constructor Create; reintroduce;
  destructor Destroy; override;
  class function New : iBluebirdCliente;

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

implementation

uses
  System.SysUtils;

{ TBluebirdCliente }

constructor TBluebirdCliente.Create;
begin
  Fobjeto := '';
  Fid := '';
//  FdataCriado := TDateTime;
  Fcidade := '';
  Festado := '';
  Fpais := '';
//  FtipoPessoa := nil;
  Fdeletado := False;

  Fnome := '';
  FcpfCnpj := '';
  Femail := '';
  Ftelefone := '';
  Fcelular := '';
  Fendereco := '';
  FenderecoNumero := '';
  Fcomplemento := '';
  Fbairro := '';
  Fcep := '';
  FreferenciaExterna := '';
  FnotificacaoDesabilitada := False;
  FemailsAdicionais := TList<String>.Create;
  FInscricaoMunicipal := '';
  FInscricaoEstadual := '';
  Fobservacoes := '';
  FnomeGrupo := '';
  Fempresa := '';
end;

destructor TBluebirdCliente.Destroy;
begin
  FreeAndNil(FemailsAdicionais);
  inherited;
end;

class function TBluebirdCliente.New: iBluebirdCliente;
begin
  Result := TBluebirdCliente.Create;
end;

function TBluebirdCliente.adicionarEmail(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Nenhum email foi informado');
  FemailsAdicionais.Add(aValue);
end;

function TBluebirdCliente.bairro(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Bairro não foi informado');
  Fbairro := aValue;
end;

function TBluebirdCliente.bairro: String;
begin
  Result := Fbairro;
end;

function TBluebirdCliente.celular(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Celular não foi informado');
  Fcelular := aValue;
end;

function TBluebirdCliente.celular: String;
begin
  Result := Fcelular;
end;

function TBluebirdCliente.cep(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('CEP não foi informado');
  Fcep := aValue;
end;

function TBluebirdCliente.cep: String;
begin
  Result := Fcep;
end;

function TBluebirdCliente.cidade: String;
begin
  Result := Fcidade;
end;

function TBluebirdCliente.complemento: String;
begin
  Result := Fcomplemento;
end;

function TBluebirdCliente.complemento(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Complemento não foi informado');
  Fcomplemento := aValue;
end;

function TBluebirdCliente.cpfCnpj: String;
begin
  Result := FcpfCnpj;
end;

function TBluebirdCliente.cpfCnpj(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('CPF ou CNPJ não foi informado');
  FcpfCnpj := aValue;
end;

function TBluebirdCliente.dataCriado: TDateTime;
begin
  { TODO 1 -oKi : Implementar alguma verificação... }
  Result := FdataCriado;
end;

function TBluebirdCliente.deletado: Boolean;
begin
  Result := Fdeletado;
end;

function TBluebirdCliente.email(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Email não foi definido');
  Femail := aValue;
end;

function TBluebirdCliente.email: String;
begin
  Result := Femail;
end;

function TBluebirdCliente.emailsAdicionais: TList<String>;
begin
  Result := FemailsAdicionais;
end;

function TBluebirdCliente.empresa: String;
begin
  Result := Fempresa;
end;

function TBluebirdCliente.empresa(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Empresa não foi definido');
  Fempresa := aValue;
end;

function TBluebirdCliente.endereco: String;
begin
  Result := Fendereco;
end;

function TBluebirdCliente.endereco(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Endereço não foi definido');
  Fendereco := aValue;
end;

function TBluebirdCliente.enderecoNumero: String;
begin
  Result := FenderecoNumero;
end;

function TBluebirdCliente.enderecoNumero(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Numero do endereço não foi definido');
  FenderecoNumero := aValue;
end;

function TBluebirdCliente.estado: String;
begin
  Result := Festado;
end;

function TBluebirdCliente.id: String;
begin
  Result := Fid;
end;

function TBluebirdCliente.InscricaoEstadual(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Inscricação Estadual não foi informado');
  FInscricaoEstadual := aValue;
end;

function TBluebirdCliente.InscricaoEstadual: String;
begin
  Result := FInscricaoEstadual;
end;

function TBluebirdCliente.InscricaoMunicipal: String;
begin
  Result := FInscricaoMunicipal;
end;

function TBluebirdCliente.InscricaoMunicipal(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Inscricação Municipal não foi informado');
  FInscricaoMunicipal := aValue;
end;

function TBluebirdCliente.nome: String;
begin
  Result := Fnome;
end;

function TBluebirdCliente.nome(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Nome não foi informado');
  Fnome := aValue;
end;

function TBluebirdCliente.nomeGrupo: String;
begin
  Result := FnomeGrupo;
end;

function TBluebirdCliente.nomeGrupo(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Nome grupo não foi informado');
  FnomeGrupo := aValue;
end;

function TBluebirdCliente.notificacaoDesabilitada: Boolean;
begin
  Result := FnotificacaoDesabilitada;
end;

function TBluebirdCliente.notificacaoDesabilitada(aValue: Boolean): iBluebirdCliente;
begin
  Result := Self;
  FnotificacaoDesabilitada := aValue;
end;

function TBluebirdCliente.objeto: String;
begin
  Result := Fobjeto;
end;

function TBluebirdCliente.observacoes: String;
begin
  Result := Fobservacoes;
end;

function TBluebirdCliente.observacoes(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Observações não foi informado');
  Fobservacoes := aValue;
end;

function TBluebirdCliente.pais: String;
begin
  Result := Fpais;
end;

function TBluebirdCliente.referenciaExterna: String;
begin
  Result := FreferenciaExterna;
end;

function TBluebirdCliente.referenciaExterna(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Referencia externa não foi informado');
  FreferenciaExterna := aValue;
end;

function TBluebirdCliente.telefone(aValue: String): iBluebirdCliente;
begin
  Result := Self;
  if aValue = EmptyStr then raise Exception.Create('Telefone não foi informado');
  Ftelefone := aValue;
end;

function TBluebirdCliente.telefone: String;
begin
  Result := Ftelefone;
end;

function TBluebirdCliente.tipoPessoa: TTipoPessoa;
begin
  Result := FtipoPessoa;
end;

function TBluebirdCliente.ToJSON: TJSONObject;
begin
  Result := TJSONObject.Create;
end;

function TBluebirdCliente.FromJSON(aValue: TJSONObject): iBluebirdCliente;
begin
  Result := Self;
end;

end.
