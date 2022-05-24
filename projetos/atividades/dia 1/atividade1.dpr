program atividade1;

uses
  Vcl.Forms,
  UnitTelaPrincipal in 'UnitTelaPrincipal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
