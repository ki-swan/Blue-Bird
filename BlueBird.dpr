program BlueBird;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Bluebird.Interfaces in 'Src\Entity\Bluebird.Interfaces.pas',
  Bluebird.Juros in 'Src\Entity\Bluebird.Juros.pas',
  Bluebird.Multa in 'Src\Entity\Bluebird.Multa.pas',
  Bluebird.Types in 'Src\Entity\Bluebird.Types.pas',
  Bluebird.Desconto in 'Src\Entity\Bluebird.Desconto.pas',
  Bluebird.Callback in 'Src\Entity\Bluebird.Callback.pas',
  Bluebird.Divisao in 'Src\Entity\Bluebird.Divisao.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
