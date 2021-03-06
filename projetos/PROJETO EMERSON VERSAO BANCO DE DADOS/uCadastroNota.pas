unit uCadastroNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TuCadNota = class(TuCadPadrao)
    lbCodigoNota: TLabel;
    edCodigoNota: TEdit;
    lbData: TLabel;
    lbCliente: TLabel;
    edCodCliente: TEdit;
    edCodEmpresa: TEdit;
    lbCodEmpresa: TLabel;
    lbCodProd: TLabel;
    edCodProd: TEdit;
    dtpData: TDateTimePicker;
    lbQuantidade: TLabel;
    edQuantidade: TEdit;
    lbTotal: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uCadNota: TuCadNota;

implementation

{$R *.dfm}

end.
