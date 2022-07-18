program projetoFinal;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {uMenuPrincipal},
  uCadastroPadrao in 'uCadastroPadrao.pas' {uCadPadrao},
  uCadastroEmpresa in 'uCadastroEmpresa.pas' {uCadEmpresa},
  uUtil in 'uUtil.pas',
  uCadastroCliente in 'uCadastroCliente.pas' {uCadCliente},
  uCadastroProduto in 'uCadastroProduto.pas' {uCadProduto},
  uCadastroNota in 'uCadastroNota.pas' {uCadNota};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuMenuPrincipal, uMenuPrincipal);
  Application.CreateForm(TuCadPadrao, uCadPadrao);
  Application.CreateForm(TuCadEmpresa, uCadEmpresa);
  Application.CreateForm(TuCadCliente, uCadCliente);
  Application.CreateForm(TuCadProduto, uCadProduto);
  Application.CreateForm(TuCadNota, uCadNota);
  Application.Run;
end.
