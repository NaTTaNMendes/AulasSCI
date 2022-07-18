unit uCadastroEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList;

type
  TuCadEmpresa = class(TuCadPadrao)
    lbCodigo: TLabel;
    edCodigo: TEdit;
    lbCNPJ: TLabel;
    edCNPJ: TEdit;
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
  uCadEmpresa: TuCadEmpresa;

implementation

{$R *.dfm}

end.
