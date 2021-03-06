program projetoCadastro;

uses
  Vcl.Forms,
  uPessoa in 'uPessoa.pas',
  uCadastroPadrao in 'uCadastroPadrao.pas' {frCadastroPadrao},
  uCadastro in 'uCadastro.pas' {frCadastro},
  uConsultaPadrao in 'uConsultaPadrao.pas' {frConsultaPadrao},
  uConsulta in 'uConsulta.pas' {frConsulta},
  uDataModule in 'uDataModule.pas' {dmModulo: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.CreateForm(TfrCadastroPadrao, frCadastroPadrao);
  Application.CreateForm(TfrConsultaPadrao, frConsultaPadrao);
  Application.CreateForm(TfrConsulta, frConsulta);
  Application.CreateForm(TdmModulo, dmModulo);
  Application.Run;
end.
