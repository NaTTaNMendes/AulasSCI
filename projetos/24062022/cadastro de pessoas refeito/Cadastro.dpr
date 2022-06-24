program Cadastro;

uses
  Vcl.Forms,
  uCadastro in 'uCadastro.pas' {frCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.Run;
end.
