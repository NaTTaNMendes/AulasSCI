unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCadastroEmpresa, uCadastroCliente, uCadastroProduto,
  uCadastroNota, uSobre;

type
  TuMenuPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    mmCad: TMenuItem;
    mmCadEmpresa: TMenuItem;
    mmCadCliente: TMenuItem;
    mmSobre: TMenuItem;
    mmCadProduto: TMenuItem;
    mmLancamento: TMenuItem;
    mmLancNota: TMenuItem;
    procedure mmCadEmpresaClick(Sender: TObject);
    procedure mmCadClienteClick(Sender: TObject);
    procedure mmCadProdutoClick(Sender: TObject);
    procedure mmLancNotaClick(Sender: TObject);
    procedure mmSobreClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uMenuPrincipal: TuMenuPrincipal;

implementation

{$R *.dfm}

procedure TuMenuPrincipal.mmCadClienteClick(Sender: TObject);
var
  wCadastroCliente : TuCadCliente;
begin
  wCadastroCliente := TuCadCliente.Create(Self);
  wCadastroCliente.Show;
end;

procedure TuMenuPrincipal.mmCadEmpresaClick(Sender: TObject);
var
  wCadastroEmpresa : TuCadEmpresa;
begin
  wCadastroEmpresa := TuCadEmpresa.Create(Self);
  wCadastroEmpresa.Show;
end;

procedure TuMenuPrincipal.mmCadProdutoClick(Sender: TObject);
var
  wCadastroProduto : TuCadProduto;
begin
  wCadastroProduto := TuCadProduto.Create(Self);
  wCadastroProduto.Show;
end;

procedure TuMenuPrincipal.mmLancNotaClick(Sender: TObject);
var
  wCadastroNota : TuCadNota;
begin
  wCadastroNota := TuCadNota.Create(Self);
  wCadastroNota.Show;
end;

procedure TuMenuPrincipal.mmSobreClick(Sender: TObject);
var
  wSobre : TfrSobre;
begin
  wSobre := TfrSobre.Create(Self);
  wSobre.Show;
end;

end.
