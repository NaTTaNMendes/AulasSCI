program MaiorNumero;

uses
  Vcl.Forms,
  uMaiorNumero in 'uMaiorNumero.pas' {frMaior};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrMaior, frMaior);
  Application.Run;
end.
