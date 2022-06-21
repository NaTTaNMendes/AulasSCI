program ProjetoDia1;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {formPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
