program projetoCadastro;

uses
  Vcl.Forms,
  uProjetoCadastro in 'uProjetoCadastro.pas' {frCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.Run;
end.
