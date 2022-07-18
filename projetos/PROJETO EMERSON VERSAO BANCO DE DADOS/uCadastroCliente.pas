unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls;

type
  TuCadCliente = class(TuCadPadrao)
    lbCodigo: TLabel;
    edCodigo: TEdit;
    lbCPF: TLabel;
    edCPF: TEdit;
    lbNome: TLabel;
    lbUF: TLabel;
    lbTelefone: TLabel;
    edNome: TEdit;
    edTelefone: TEdit;
    cbUF: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uCadCliente: TuCadCliente;

implementation

{$R *.dfm}

end.
