program BlueBird;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Bluebird.Interfaces in 'Src\Entity\Bluebird.Interfaces.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
