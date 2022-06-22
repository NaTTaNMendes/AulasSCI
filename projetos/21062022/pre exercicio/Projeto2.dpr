program Projeto2;

uses
  Vcl.Forms,
  uProjeto2 in 'uProjeto2.pas' {frTelaCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrTelaCadastro, frTelaCadastro);
  Application.Run;
end.
