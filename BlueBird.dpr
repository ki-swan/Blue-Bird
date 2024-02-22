program BlueBird;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Bluebird.Cliente in 'Src\Clientes\Bluebird.Cliente.pas',
  Bluebird.Clientes.Interfaces in 'Src\Clientes\Bluebird.Clientes.Interfaces.pas',
  Bluebird.Clientes.types in 'Src\Clientes\Bluebird.Clientes.types.pas';

begin
  try

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
