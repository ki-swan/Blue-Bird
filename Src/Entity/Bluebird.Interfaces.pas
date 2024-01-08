unit Bluebird.Interfaces;

interface

uses
  System.Generics.Collections;

type

TFormaPagamento = (fp_indefinido, fp_boleto, fp_cartao, fp_pix);

iBluebirdDisconto = interface
['{206F6128-FB83-42B1-990E-CF6569A5B5B4}']
  function Valor(aValue : Currency) : iBluebirdDisconto; overload;
  function Valor : Currency; overload;
  function DiasAntesDoVencimento(aValue : Int32) : iBluebirdDisconto; overload;
  function DiasAntesDoVencimento : Int32; overload;
  function Tipo(aValue : String) : iBluebirdDisconto; overload;
  function Tipo : String; overload;
end;

iBluebirdJuros = interface
['{BBDDF47E-8BA4-4CC2-A94A-C3986A8B62B6}']
  function ValorAoMes(aPorcentagem : Double) : iBluebirdJuros; overload;
  function ValorAoMes : Double; overload;
end;

iBluebirdMulta = interface
['{013B7B3D-0087-4CA2-B801-EFAB6273A2C3}']
  function Valor(aPorcentagem : Double) : iBluebirdMulta; overload;
  function Valor : Double; overload;
  function Tipo(aValue : String) : iBluebirdMulta; overload;
  function Tipo : String; overload;
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
end;

iBluebirdCallback = interface
['{B6811775-4350-4F39-83E4-CA36653F7DB2}']
  function SucessoURL(aValor : String) : iBluebirdCallback; overload;
  function SucessoURL : String; overload;
  function AutoRedirecionar(aValor : Boolean) : iBluebirdCallback; overload;
  function AutoRedirecionar : Boolean; overload;
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
  function Desconto(aValor : iBluebirdDisconto) : iBluebirdCobranca; overload;
  function Desconto : iBluebirdDisconto; overload;
  function Multa(aValor : iBluebirdMulta) : iBluebirdCobranca; overload;
  function Multa : iBluebirdMulta; overload;
  function ServicoPostal(aValor : Boolean) : iBluebirdCobranca; overload;
  function ServicoPostal : Boolean; overload;
  function Divisao(aValor : iBluebirdDivisao) : iBluebirdCobranca; overload;
  function Divisao : TList<iBluebirdDivisao>; overload;
  function Callback(aValor : iBluebirdCallback) : iBluebirdCobranca; overload;
  function Callback : iBluebirdCallback; overload;
end;

implementation

end.
