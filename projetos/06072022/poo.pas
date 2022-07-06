unit poo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEmpresa = class
    private
      wCodigo : Integer;
      wCNPJ : String;
      wDono : String;
      wNome : String;
      wEndereco : String;
      wReceitaDiaria : Currency;
  end;

type
  TfrCadastro = class(TForm)
    lbCodigo: TLabel;
    edCodigo: TEdit;
    lbNome: TLabel;
    edNome: TEdit;
    lbCNPJ: TLabel;
    edCNPJ: TEdit;
    lbDono: TLabel;
    edDono: TEdit;
    lbEndereco: TLabel;
    edEndereco: TEdit;
    lbReceita: TLabel;
    edReceita: TEdit;
    btCadastrar: TButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frCadastro: TfrCadastro;

implementation

{$R *.dfm}

procedure TfrCadastro.FormShow(Sender: TObject);
var
  wEmpresa : TEmpresa;
begin
  // Cadastrando empresa aleatória
  wEmpresa := TEmpresa.Create;
  wEmpresa.wCodigo := 1;
  wEmpresa.wCNPJ := '73.790.869/0001-50';
  wEmpresa.wDono := 'Carlos Andrade';
  wEmpresa.wEndereco := 'Rua dos Silveiras, 488 - Vila Formosa, São Paulo, SP';
  wEmpresa.wReceitaDiaria := 1200;
  wEmpresa.wNome := 'Carlinho do pneu';
end;

end.
