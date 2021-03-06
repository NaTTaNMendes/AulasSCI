unit uProjeto2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrTelaCadastro = class(TForm)
    lbNome: TLabel;
    lbGenero: TLabel;
    cbGenero: TComboBox;
    edNomeCompleto: TEdit;
    ckMenorDeIdade: TCheckBox;
    btCadastrar: TButton;
    procedure btCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTelaCadastro: TfrTelaCadastro;

implementation

{$R *.dfm}

procedure TfrTelaCadastro.btCadastrarClick(Sender: TObject);
var
  wMenorIdade: String;
begin
  wMenorIdade := 'N?o';
  if (ckMenorDeIdade.Checked) then
     wMenorIdade := 'Sim';

  ShowMessage('Nome: ' + edNomeCompleto.Text + #13 + 'G?nero: ' + cbGenero.Text + #13 + 'Menor de idade: ' + wMenorIdade);
end;

end.
