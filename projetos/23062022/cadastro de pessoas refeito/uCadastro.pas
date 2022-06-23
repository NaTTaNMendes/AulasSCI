unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrCadastro = class(TForm)
    lbNome: TLabel;
    edNome: TEdit;
    lbIdade: TLabel;
    edIdade: TEdit;
    ckEstudante: TCheckBox;
    btAdicionar: TButton;
    btMostrar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btMostrarClick(Sender: TObject);
  private
    { Private declarations }
    wCadastrados : TStringList;
    function fDiretorio : String;
    procedure pLimparTela;
  public
    { Public declarations }
  end;

var
  frCadastro: TfrCadastro;

implementation

{$R *.dfm}

procedure TfrCadastro.btAdicionarClick(Sender: TObject);
var
  wNome, wEstudante : String;
  wIdade : Integer;
begin
  wNome := edNome.Text;
  if (wNome <> '') then
     begin
       try
         wIdade := StrToInt(edIdade.Text);
         if (ckEstudante.Checked = True) then
            wEstudante := 'Sim'
         else
            wEstudante := 'N�o';
         wCadastrados.Add('Nome: ' + wNome + ' | Idade: ' + IntToStr(wIdade) + ' | Estudante: ' + wEstudante);
       except
         ShowMessage('Idade inv�lida');
       end;
       pLimparTela;
     end
  else
     ShowMessage('Nome inv�lido');
end;

procedure TfrCadastro.btMostrarClick(Sender: TObject);
var
  wCount : Integer;
  wSaida : String;
begin
  if (wCadastrados.Count = 0) then
     ShowMessage('Nenhum dado cadastrado')
  else
     begin
       wSaida := '';
       for wCount := 0 to wCadastrados.Count-1 do
         wSaida := wSaida + wCadastrados[wCount] + #13;
       ShowMessage(wSaida);
     end;
end;

function TfrCadastro.fDiretorio: String;
begin
  Result := 'C:\Users\prog28\Desktop\Dados';
end;

procedure TfrCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DirectoryExists(fDiretorio) then
     wCadastrados.SaveToFile(fDiretorio + '\dados.txt')
  else
     ForceDirectories(fDiretorio + '\dados.txt');
end;

procedure TfrCadastro.FormShow(Sender: TObject);
begin
  wCadastrados := TStringList.Create;
  if FileExists(fDiretorio + '\dados.txt') then
     wCadastrados.LoadFromFile(fDiretorio + '\dados.txt');
end;

procedure TfrCadastro.pLimparTela;
begin
  edNome.Clear;
  edIdade.Clear;
  edNome.SetFocus;
end;

end.