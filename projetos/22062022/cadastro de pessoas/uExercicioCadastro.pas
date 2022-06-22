unit uExercicioCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrCadastro = class(TForm)
    lbNome: TLabel;
    edNome: TEdit;
    lbGenero: TLabel;
    cbGenero: TComboBox;
    ckEstrangeiro: TCheckBox;
    btAdicionar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
  private
    { Private declarations }
    wStringList : TStringList;
  public
    { Public declarations }
  end;

var
  frCadastro: TfrCadastro;

implementation

{$R *.dfm}

procedure TfrCadastro.btAdicionarClick(Sender: TObject);
var
  wSaida, wGenero, wEstrangeiro : String;
  wCount : Integer;
begin
  wSaida := '';

  if (edNome.Text <> '') then
     begin
       if (cbGenero.ItemIndex = 0) then
          wGenero := 'Masculino'
       else if (cbGenero.ItemIndex = 1) then
          wGenero := 'Feminino'
       else
          wGenero := 'Outro';

       if (ckEstrangeiro.Checked = True) then
          wEstrangeiro := 'Sim'
       else
          wEstrangeiro := 'N�o';

       wStringList.Add('Nome: ' + edNome.Text + ' | ' + ' G�nero: ' + wGenero + ' | Estrangeiro: ' + wEstrangeiro + #13);

       for wCount := 0 to wStringList.Count-1 do
         begin
           wSaida := wSaida + wStringList[wCount];
         end;
       ShowMessage(wSaida);
     end;

end;

procedure TfrCadastro.FormShow(Sender: TObject);
begin
  wStringList := TStringList.Create;
end;

end.
