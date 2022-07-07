program AprendendoPOO;

uses
  Vcl.Forms,
  poo in 'poo.pas' {frCadastro},
  CadastroRestaurante in 'CadastroRestaurante.pas' {frCadastroRestaurante},
  uCadEmpresa in 'uCadEmpresa.pas' {frCadastroEmpresa},
  uRelatorio in 'uRelatorio.pas' {frRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrRelatorio, frRelatorio);
  Application.CreateForm(TfrCadastroEmpresa, frCadastroEmpresa);
  Application.CreateForm(TfrCadastroRestaurante, frCadastroRestaurante);
  Application.CreateForm(TfrCadastro, frCadastro);
  Application.Run;
end.
