unit Bluebird.Interfaces;

interface

uses
  System.Generics.Collections,
  System.JSON, Bluebird.Types;

type

iBluebirdDesconto = interface
['{206F6128-FB83-42B1-990E-CF6569A5B5B4}']
  function Valor(aValue : Int64) : iBluebirdDesconto; overload;
  function Valor : Int64; overload;
  function DiasAntesDoVencimento(aValue : Int32) : iBluebirdDesconto; overload;
  function DiasAntesDoVencimento : Int32; overload;
  function Tipo(aValue : TTipoValor) : iBluebirdDesconto; overload;
  function Tipo : TTipoValor; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdDesconto;
  function ToJSON : TJSONObject;
end;

iBluebirdJuros = interface
['{BBDDF47E-8BA4-4CC2-A94A-C3986A8B62B6}']
  function ValorAoMes(aPorcentagem : Double) : iBluebirdJuros; overload;
  function ValorAoMes : Double; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdJuros;
  function ToJSON : TJSONObject;
end;

iBluebirdMulta = interface
['{013B7B3D-0087-4CA2-B801-EFAB6273A2C3}']
  function Valor(aValor : Double) : iBluebirdMulta; overload;
  function Valor : Double; overload;
  function Tipo(aValue : TTipoValor) : iBluebirdMulta; overload;
  function Tipo : TTipoValor; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdMulta;
  function ToJSON : TJSONObject;
end;

iBluebirdDivisao = interface
['{F50CED95-E118-44AC-82E9-248AEC033ACD}']
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

iBluebirdCallback = interface
['{B6811775-4350-4F39-83E4-CA36653F7DB2}']
  function SucessoURL(aValor : String) : iBluebirdCallback; overload;
  function SucessoURL : String; overload;
  function AutoRedirecionar(aValor : Boolean) : iBluebirdCallback; overload;
  function AutoRedirecionar : Boolean; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdCallback;
  function ToJSON : TJSONObject;
end;

iBluebirdCobranca = interface
['{5DBFEA30-26D6-4388-A3E8-02FE006B9B1A}']
  function ClienteAsaas(aID : String) : iBluebirdCobranca; overload;
  function ClienteAsaas : String; overload;
  function FormaPagamento(aValor : TFormaPagamento) : iBluebirdCobranca; overload;
  function FormaPagamento : TFormaPagamento; overload;
  function Valor(aValor : Currency) : iBluebirdCobranca; overload;
  function Valor : Currency; overload;
  function DataVencimento(aValor : TDate) : iBluebirdCobranca; overload;
  function DataVencimento : TDate; overload;
  function Descricao(aValor : String) : iBluebirdCobranca; overload;
  function Descricao : String; overload;
  function DiasParaCancelamentoBoleto(aValor : Int32) : iBluebirdCobranca; overload;
  function DiasParaCancelamentoBoleto : Int32; overload;
  function ReferenciaExterna(aValor : String) : iBluebirdCobranca; overload;
  function ReferenciaExterna : String; overload;
  function NumeroParcelas(aValor : Int32) : iBluebirdCobranca; overload;
  function NumeroParcelas : Int32; overload;
  function ValorTotalParcelas(aValor : Currency) : iBluebirdCobranca; overload;
  function ValorTotalParcelas : Currency; overload;
  function ValorParcela(aValor : Currency) : iBluebirdCobranca; overload;
  function ValorParcela : Currency; overload;
  function Desconto(aValor : iBluebirdDesconto) : iBluebirdCobranca; overload;
  function Desconto : iBluebirdDesconto; overload;
  function Multa(aValor : iBluebirdMulta) : iBluebirdCobranca; overload;
  function Multa : iBluebirdMulta; overload;
  function ServicoPostal(aValor : Boolean) : iBluebirdCobranca; overload;
  function ServicoPostal : Boolean; overload;
  function Divisao(aValor : iBluebirdDivisao) : iBluebirdCobranca; overload;
  function Divisao : TList<iBluebirdDivisao>; overload;
  function Callback(aValor : iBluebirdCallback) : iBluebirdCobranca; overload;
  function Callback : iBluebirdCallback; overload;

  function FromJSON(aValue : TJSONObject) : iBluebirdCobranca;
  function ToJSON : TJSONObject;
end;

implementation

end.
