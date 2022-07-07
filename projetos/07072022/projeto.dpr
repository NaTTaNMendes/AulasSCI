program projeto;

uses
  Vcl.Forms,
  uSistemaVeiculos in 'uSistemaVeiculos.pas' {frSistemaVeiculos},
  uClasses in 'uClasses.pas',
  uCadastro in 'uCadastro.pas' {frCadastro},
  uCadastroCarros in 'uCadastroCarros.pas' {frCadastroCarro},
  uCadastroMoto in 'uCadastroMoto.pas' {frCadastroMoto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrSistemaVeiculos, frSistemaVeiculos);
  Application.CreateForm(TfrCadastroCarro, frCadastroCarro);
  Application.CreateForm(TfrCadastroMoto, frCadastroMoto);
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.Run;
end.
