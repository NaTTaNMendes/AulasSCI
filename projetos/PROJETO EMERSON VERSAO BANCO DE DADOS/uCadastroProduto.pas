unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls;

type
  TuCadProduto = class(TuCadPadrao)
    lbCodigo: TLabel;
    edCodigo: TEdit;
    lbDescricao: TLabel;
    edDescricao: TEdit;
    lbNCM: TLabel;
    edNCM: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uCadProduto: TuCadProduto;

implementation

{$R *.dfm}

end.
