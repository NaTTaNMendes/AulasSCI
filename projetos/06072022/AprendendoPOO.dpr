program AprendendoPOO;

uses
  Vcl.Forms,
  poo in 'poo.pas' {frCadastro},
  CadastroRestaurante in 'CadastroRestaurante.pas' {frCadastroRestaurante},
  uCadEmpresa in 'uCadEmpresa.pas' {frCadastroEmpresa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrCadastroEmpresa, frCadastroEmpresa);
  Application.CreateForm(TfrCadastroRestaurante, frCadastroRestaurante);
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.Run;
end.
