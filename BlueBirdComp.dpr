program BlueBirdComp;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Bluebird.Interfaces in 'Src\Bluebird.Interfaces.pas',
  Bluebird.Cliente in 'Src\Bluebird.Cliente.pas',
  Bluebird.Types in 'Src\Bluebird.Types.pas',
  Bluebird in 'Src\Bluebird.pas';

begin
  try
//    TBluebirdCliente.New;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
