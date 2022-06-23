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
    cdsCDSInterface: TClientDataSet;
    cdsCDSInterfacebdCODIGO: TIntegerField;
    cdsCDSInterfacebdNOME: TStringField;
    cdsCDSInterfacebdIDADE: TIntegerField;
    cdsCDSInterfacebdESTUDANTE: TBooleanField;
    ckNome: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btMostrarClick(Sender: TObject);
  private
    { Private declarations }
    wCadastrados : TStringList;
    cdsCDS : TClientDataSet;
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
            wEstudante := 'N�o';
         wCadastrados.Add('C�digo: ' + IntToStr(wCodigo) + ' | Nome: ' + wNome + ' | Idade: ' + IntToStr(wIdade) + ' | Estudante: ' + wEstudante);
       except
         ShowMessage('Idade ou c�digo inv�lidos');
       end;
       pLimparTela;

       // Busca o nome da coluna que vamos procurar e verifica se � necess�rio uma edi��o ou inser��o
       cdsCDS.IndexFieldNames := 'bdCODIGO';
       if (cdsCDS.FindKey([IntToStr(wCodigo)])) then
          cdsCDS.Edit
       else
          cdsCDS.Insert;

       cdsCDS.FieldByName('bdCODIGO').AsInteger := wCodigo;
       cdsCDS.FieldByName('bdNOME').AsString := wNome;
       cdsCDS.FieldByName('bdIDADE').AsInteger := wIdade;
       if (wEStudante = 'Sim') then
          cdsCDS.FieldByName('bdESTUDANTE').AsBoolean := True
       else
          cdsCDS.FieldByName('bdESTUDANTE').AsBoolean := False;

       // Salva uma linha
       cdsCDS.Post;
     end
  else
     ShowMessage('Nome inv�lido');
end;

procedure TfrCadastro.btMostrarClick(Sender: TObject);
var
  wCount : Integer;
  wSaida, wEstudante : String;
begin

//  if (wCadastrados.Count = 0) then
//     ShowMessage('Nenhum dado cadastrado')
//  else
//     begin
//       wSaida := '';
//       for wCount := 0 to wCadastrados.Count-1 do
//        wSaida := wSaida + wCadastrados[wCount] + #13;
//      ShowMessage(wSaida);
//     end;

  if (BoolToStr(cdsCDS.FieldByName('bdESTUDANTE').AsBoolean) = '-1') then
     wEstudante := 'N�o'
  else
     wEstudante := 'Sim';

  if(ckNome.Checked = True) then
     cdsCDS.IndexFieldNames := 'bdNOME';

  cdsCDS.First;
  wSaida := '';
  while not cdsCDS.Eof do
    begin
      wSaida := wSaida + #13 +
      'C�digo: ' + IntToStr(cdsCDS.FieldByName('bdCODIGO').AsInteger) +
      ' | Nome: ' + cdsCDS.FieldByName('bdNOME').AsString +
      ' | Idade: ' + IntToStr(cdsCDS.FieldByName('bdIDADE').AsInteger) +
      ' | Estudante: ' + wEstudante;
      cdsCDs.Next;
    end;
  showMessage(wSaida);
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

  // Cria vari�vel
  cdsCDS := TClientDataSet.Create(Self);

  // Adiciona as colunas
  cdsCDS.FieldDefs.Add('bdCODIGO', ftInteger);
  cdsCDS.FieldDefs.Add('bdNOME', ftString, 255);
  cdsCDS.FieldDefs.Add('bdIDADE', ftInteger);
  cdsCDS.FieldDefs.Add('bdESTUDANTE', ftBoolean);

  // Adiciona a chave prim�ria e os itens que iremos pesquisar
  cdsCDS.IndexDefs.Add('iCODIGO', 'bdCODIGO', [ixPrimary]);
  cdsCDS.IndexDefs.Add('iNOME', 'bdNOME', [ixCaseInsensitive]);
  cdsCDSInterface.IndexDefs.Add('iCODIGO', 'bdCODIGO', [ixPrimary]);
  cdsCDSInterface.IndexDefs.Add('iNOME', 'bdNOME', [ixCaseInsensitive]);

  // Inicia banco de dados
  cdsCDS.CreateDataSet;
  cdsCDS.Open;
  cdsCDSInterface.CreateDataSet;
  cdsCDSInterface.Open;
end;

procedure TfrCadastro.pLimparTela;
begin
  edNome.Clear;
  edIdade.Clear;
  edCodigo.Clear;
  edCodigo.SetFocus;
end;

end.
