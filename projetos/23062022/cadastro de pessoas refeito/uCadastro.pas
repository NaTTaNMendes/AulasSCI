unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids;

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
    ckNome: TCheckBox;
    lbGenero: TLabel;
    cbGenero: TComboBox;
    grDados: TDBGrid;
    dsCadastro: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure ckNomeClick(Sender: TObject);
  private
    { Private declarations }
    cdsCDS : TClientDataSet;
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
  wIdade, wCodigo, wGenero : Integer;
begin
  wNome := edNome.Text;
  if (wNome <> '') then
     begin
       try
         wIdade := StrToInt(edIdade.Text);
         wCodigo := StrToInt(edCodigo.Text);
         wGenero := cbGenero.ItemIndex;
         if (ckEstudante.Checked = True) then
            wEstudante := 'Sim'
         else
            wEstudante := 'N?o';
         // Busca o nome da coluna que vamos procurar e verifica se ? necess?rio uma edi??o ou inser??o
         cdsCDS.IndexFieldNames := 'bdCODIGO';
         if (cdsCDS.FindKey([IntToStr(wCodigo)])) then
            begin
              cdsCDS.Edit;
              ShowMessage('Pessoa editada');
            end
         else
            begin
              cdsCDS.Insert;
              ShowMessage('Pessoa adicionada');
            end;

         cdsCDS.FieldByName('bdCODIGO').AsInteger := wCodigo;
         cdsCDS.FieldByName('bdNOME').AsString := wNome;
         cdsCDS.FieldByName('bdIDADE').AsInteger := wIdade;
         cdsCDS.FieldByName('bdGENERO').AsInteger := wGenero;
         if (wEStudante = 'Sim') then
            cdsCDS.FieldByName('bdESTUDANTE').AsBoolean := True
         else
            cdsCDS.FieldByName('bdESTUDANTE').AsBoolean := False;

         // Salva uma linha
         cdsCDS.Post;
       except
         ShowMessage('Idade ou c?digo inv?lidos');
       end;
       pLimparTela;
     end
  else
     ShowMessage('Nome inv?lido');
end;

procedure TfrCadastro.btMostrarClick(Sender: TObject);
var
  wSaida, wEstudante, wGenero : String;
begin
  if(ckNome.Checked = True) then
     cdsCDS.IndexFieldNames := 'bdNOME'
  else
     cdsCDS.IndexFieldNames := 'bdCODIGO';

  cdsCDS.First;
  wSaida := '';
  while not cdsCDS.Eof do
    begin
      if (BoolToStr(cdsCDS.FieldByName('bdESTUDANTE').AsBoolean) = '-1') then
         wEstudante := 'N?o'
      else
         wEstudante := 'Sim';

      if (cdsCDS.FieldByName('bdGENERO').AsInteger = 0) then
         wGenero := 'Masculino'
      else if (cdsCDS.FieldByName('bdGENERO').AsInteger = 1) then
         wGenero := 'Feminino'
      else
         wGenero := 'Outro';
      wSaida := wSaida + #13 +
      'C?digo: ' + IntToStr(cdsCDS.FieldByName('bdCODIGO').AsInteger) +
      ' | Nome: ' + cdsCDS.FieldByName('bdNOME').AsString +
      ' | Idade: ' + IntToStr(cdsCDS.FieldByName('bdIDADE').AsInteger) +
      ' | G?nero: ' + wGenero +
      ' | Estudante: ' + wEstudante;
      cdsCDs.Next;
    end;
  if (wSaida = '') then
     ShowMessage('Nenhuma pessoa cadastrada')
  else
     ShowMessage(wSaida);
end;

procedure TfrCadastro.ckNomeClick(Sender: TObject);
begin
  if(ckNome.Checked = True) then
     cdsCDS.IndexFieldNames := 'bdNOME'
  else
     cdsCDS.IndexFieldNames := 'bdCODIGO';
end;

// Verifica se o c?digo j? existe no CDS e traz as informa??es para o usu?rio
procedure TfrCadastro.edCodigoExit(Sender: TObject);
begin
  if (edCodigo.Text <> '') then
     begin
       try
         cdsCDS.IndexFieldNames := 'bdCODIGO';
         if (cdsCDS.FindKey([StrToInt(edCodigo.Text)])) then
            begin
              edNome.Text := cdsCDS.FieldByName('bdNOME').AsString;
              edIdade.Text := IntToStr(cdsCDS.FieldByName('bdIDADE').AsInteger);
              cbGenero.ItemIndex := cdsCDS.FieldByName('bdGENERO').AsInteger;
              if (cdsCDS.FieldByName('bdESTUDANTE').AsBoolean = True) then
                 ckEstudante.Checked := True
              else
                 ckEstudante.Checked := False;
            end;
       except
       end;
     end;
end;

// Vari?veis e CDS iniciado ao abrir a tela
procedure TfrCadastro.FormShow(Sender: TObject);
begin
  // Cria vari?vel
  cdsCDS := TClientDataSet.Create(Self);

  // Adiciona as colunas
  cdsCDS.FieldDefs.Add('bdCODIGO', ftInteger);
  cdsCDS.FieldDefs.Add('bdNOME', ftString, 255);
  cdsCDS.FieldDefs.Add('bdIDADE', ftInteger);
  cdsCDS.FieldDefs.Add('bdESTUDANTE', ftBoolean);
  cdsCDS.FieldDefs.Add('bdGENERO', ftInteger);

  // Adiciona a chave prim?ria e os itens que iremos pesquisar
  cdsCDS.IndexDefs.Add('iCODIGO', 'bdCODIGO', [ixPrimary]);
  cdsCDS.IndexDefs.Add('iNOME', 'bdNOME', [ixCaseInsensitive]);

  // Inicia banco de dados
  cdsCDS.CreateDataSet;
  cdsCDS.Open;

  // Conectando o data source ao data set
  dsCadastro.DataSet := cdsCDS;
end;

procedure TfrCadastro.pLimparTela;
begin
  edNome.Clear;
  edIdade.Clear;
  edCodigo.Clear;
  edCodigo.SetFocus;
end;

end.
