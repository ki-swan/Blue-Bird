program BlueBird;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Bluebird.Interfaces in 'Src\Entity\Bluebird.Interfaces.pas',
  Bluebird.Cliente in 'Src\Entity\Bluebird.Cliente.pas',
  Bluebird.Types in 'Src\Entity\Bluebird.Types.pas';

begin
  try
    TBluebirdClienteAssinado.New.cliente
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
