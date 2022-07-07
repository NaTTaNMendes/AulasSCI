unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClasses;

type
  TfrCadastro = class(TForm)
    lbModelo: TLabel;
    edModelo: TEdit;
    lbCor: TLabel;
    edCor: TEdit;
    edPeso: TEdit;
    lbPeso: TLabel;
    btCadastrar: TButton;
  private
    { Private declarations }
    procedure pLimparCampos(); Virtual; Abstract;
  public
    { Public declarations }
  end;

var
  frCadastro: TfrCadastro;

implementation

{$R *.dfm}

end.
