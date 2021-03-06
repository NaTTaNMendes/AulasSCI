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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    wStringList : TStringList;
    function fDiretorio : String;
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
          wEstrangeiro := 'N?o';

       wStringList.Add('Nome: ' + edNome.Text + ' | ' + ' G?nero: ' + wGenero + ' | Estrangeiro: ' + wEstrangeiro);

       for wCount := 0 to wStringList.Count-1 do
         begin
           wSaida := wSaida + #13 + wStringList[wCount];
         end;
       ShowMessage(wSaida);
     end
  else
     ShowMessage('Insira um nome v?lido');

end;

function TfrCadastro.fDiretorio: String;
begin
  Result := 'C:\Users\prog28\Desktop\atividades\AulasSCI\projetos\22062022\cadastro de pessoas\saidas';
end;

procedure TfrCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DirectoryExists(fDiretorio) then
     wStringList.SaveToFile(fDiretorio + '\Cadastros.txt')
  else
     ForceDirectories(fDiretorio + '\Cadastros.txt');

end;

procedure TfrCadastro.FormShow(Sender: TObject);
begin
  wStringList := TStringList.Create;
  if FileExists(fDiretorio + '\Cadastros.txt') then
     wStringList.LoadFromFile(fDiretorio + '\Cadastros.txt');

end;

end.
