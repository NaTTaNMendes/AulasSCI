unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient;

type
  TfrCadastro = class(TForm)
    lbNome: TLabel;
    edNome: TEdit;
    lbIdade: TLabel;
    edIdade: TEdit;
    ckEstudante: TCheckBox;
    btAdicionar: TButton;
    btMostrar: TButton;
    lbCodigo: TLabel;
    edCodigo: TEdit;
    wCDSInterface: TClientDataSet;
    wCDSInterfacebdCODIGO: TIntegerField;
    wCDSInterfacebdNOME: TStringField;
    wCDSInterfacebdIDADE: TIntegerField;
    wCDSInterfacebdESTUDANTE: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btMostrarClick(Sender: TObject);
  private
    { Private declarations }
    wCadastrados : TStringList;
    wCDS : TClientDataSet;
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
  wIdade, wCodigo : Integer;
begin
  wNome := edNome.Text;
  if (wNome <> '') then
     begin
       try
         wIdade := StrToInt(edIdade.Text);
         wCodigo := StrToInt(edCodigo.Text);
         if (ckEstudante.Checked = True) then
            wEstudante := 'Sim'
         else
            wEstudante := 'Não';
         wCadastrados.Add('Código: ' + IntToStr(wCodigo) + ' | Nome: ' + wNome + ' | Idade: ' + IntToStr(wIdade) + ' | Estudante: ' + wEstudante);
       except
         ShowMessage('Idade ou código inválidos');
       end;
       pLimparTela;
     end
  else
     ShowMessage('Nome inválido');
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

// Coleta o caminho para salvar os arquivos
function TfrCadastro.fDiretorio: String;
begin
  Result := 'C:\Users\prog28\Desktop\Dados';
end;

// Salva os dados em um arquivo
procedure TfrCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DirectoryExists(fDiretorio) then
     wCadastrados.SaveToFile(fDiretorio + '\dados.txt')
  else
     ForceDirectories(fDiretorio + '\dados.txt');
end;

procedure TfrCadastro.FormShow(Sender: TObject);
begin
  // Inicia a lista
  wCadastrados := TStringList.Create;

  // Verifica se existe o arquivo para armazenamento
  if FileExists(fDiretorio + '\dados.txt') then
     wCadastrados.LoadFromFile(fDiretorio + '\dados.txt');

  // Cria variável
  wCDS := TClientDataSet.Create(Self);

  // Adiciona as colunas
  wCDS.FieldDefs.Add('bdCODIGO', ftInteger);
  wCDS.FieldDefs.Add('bdNOME', ftString, 255);
  wCDS.FieldDefs.Add('bdIDADE', ftInteger);
  wCDS.FieldDefs.Add('bdESTUDANTE', ftBoolean);

  // Adiciona a chave primária e os itens que iremos pesquisar
  wCDS.IndexDefs.Add('iCODIGO', 'bdCODIGO', [ixPrimary]);
  wCDS.IndexDefs.Add('iNOME', 'bdNOME', [ixCaseInsensitive]);
  wCDSInterface.IndexDefs.Add('iCODIGO', 'bdCODIGO', [ixPrimary]);
  wCDSInterface.IndexDefs.Add('iNOME', 'bdNOME', [ixCaseInsensitive]);

  // Inicia banco de dados
  wCDS.CreateDataSet;
  wCDS.Open;
  wCDSInterface.CreateDataSet;
  wCDSInterface.Open;
end;

procedure TfrCadastro.pLimparTela;
begin
  edNome.Clear;
  edIdade.Clear;
  edCodigo.Clear;
  edCodigo.SetFocus;
end;

end.
