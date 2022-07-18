unit uCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls;

type
  TuCadPadrao = class(TForm)
    imBotao: TImageList;
    imBotaoDesabilitado: TImageList;
    btSalvar: TButton;
    btDeletar: TButton;
    btLimpar: TButton;
    btConsultar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uCadPadrao: TuCadPadrao;

implementation

{$R *.dfm}

end.
