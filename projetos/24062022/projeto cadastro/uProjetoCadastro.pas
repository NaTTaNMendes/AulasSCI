unit uProjetoCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrCadastro = class(TForm)
    lbCodigo: TLabel;
    edCodigo: TEdit;
    cbPessoa: TComboBox;
    lbCPF: TLabel;
    edCPF: TEdit;
    lbNome: TLabel;
    edNome: TEdit;
    lbEndereco: TLabel;
    edEndereco: TEdit;
    ckIsento: TCheckBox;
    btSalvar: TButton;
    btExcluir: TButton;
    btExportar: TButton;
    grDados: TDBGrid;
    dsDados: TDataSource;
    btLimpar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure cbPessoaChange(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure grDadosTitleClick(Column: TColumn);
    procedure btExportarClick(Sender: TObject);
  private
    { Private declarations }
    cdsDados : TClientDataSet;
    wLista : TStringList;
    procedure pLimparTela;
    function fDiretorio : String;
    function fVerificarCPFCNPJ(prEntrada : String) : Boolean;
    function fCalcularCPF(prEntrada : String) : Integer;
    function fCalcularCNPJ(prEntrada : String) : Integer;
  public
    { Public declarations }
  end;

var
  frCadastro: TfrCadastro;

implementation

{$R *.dfm}

procedure TfrCadastro.btExcluirClick(Sender: TObject);
begin
  if (edCodigo.Text <> '') then
     begin
       try
         cdsDados.IndexFieldNames := 'bdCODIGO';
         if (cdsDados.FindKey([StrToInt(edCodigo.Text)])) then
              cdsDados.Delete;
       except
         ShowMessage('ERRO: c?digo inv?lido');
       end;
     end
  else
     ShowMessage('ERRO: n?o ? poss?vel excluir uma pessoa n?o cadastrada');
  pLimparTela;
end;

procedure TfrCadastro.btExportarClick(Sender: TObject);
var
  wSaida, wTipo, wIsento : String;
begin
  wSaida := '';

  if (cdsDados.RecordCount = 0) then
     ShowMessage('ERRO: nenhum dado adicionado para exportar')
  else
     begin
       // Adiciona todos os dados do CDS em um arquivo e salva
       cdsDados.IndexFieldNames := 'bdCODIGO';
       cdsDados.First;

       while not(cdsDados.Eof) do
         begin
           if (cdsDados.FieldByName('bdTIPO').AsInteger = 0) then
              wTipo := 'Pessoa F?sica'
           else
              wTipo := 'Pessoa jur?dica';

           if (cdsDados.FieldByName('bdISENTO').AsBoolean) then
              wIsento := 'Sim'
           else
              wIsento := 'N?o';

           wSaida := wSaida + #13 +
           'C?digo: ' + IntToStr(cdsDados.FieldByName('bdCODIGO').AsInteger) + ' | ' +
           'Nome: ' + cdsDados.FieldByName('bdNOME').AsString + ' | ' +
           'CPF: ' + cdsDados.FieldByName('bdCPF').AsString + ' | ' +
           'Tipo: ' + wTipo + ' | ' +
           'Isento: ' + wIsento + ' | ' +
           'Endere?o: ' + cdsDados.FieldByName('bdENDERECO').AsString;

           // Avan?a para a pr?xima linha
           cdsDados.Next;
         end;

       // Adiciona os dados na lista e adiciona em um arquivo
       wLista.Add(wSaida);
       if DirectoryExists(fDiretorio) then
          wLista.SaveToFile(fDiretorio + '\dados.txt')
       else
          ForceDirectories(fDiretorio + '\dados.txt');

       ShowMessage('Dados salvos no caminho: ' + fDiretorio + '\dados.txt');
     end;
end;

procedure TfrCadastro.btLimparClick(Sender: TObject);
begin
  pLimparTela;
  btExcluir.Enabled := False;
end;

procedure TfrCadastro.btSalvarClick(Sender: TObject);
var
  wCodigo, wTipo : Integer;
  wNome, wCPF, wEndereco : String;
  wIsento : Boolean;
begin
  try
    // Coleta os dados
    wCodigo := StrToInt(edCodigo.Text);
    wTipo := cbPessoa.ItemIndex;
    wNome := edNome.Text;
    wCPF := edCPF.Text;
    wEndereco := edEndereco.Text;

    // Verifica as condi??es do ck
    if (ckIsento.Checked = True) then
       wIsento := True
    else
       wIsento := False;
    if (ckIsento.Enabled = False) then
       wIsento := False;

    // Verifica se as Strings s?o v?lidas
    if (wNome = '') or (wEndereco = '') or (wCPF = '') or (fVerificarCPFCNPJ(wCPF) = False) then
       ShowMessage('ERRO: dados incorretos')
    else
       begin
         // Verifica se ? uma inser??o ou edi??o
         cdsDados.IndexFieldNames := 'bdCODIGO';
         if (cdsDados.FindKey([IntToStr(wCodigo)])) then
            cdsDados.Edit
         else
            cdsDados.Insert;

         // Coloca os dados no CDS
         cdsDados.FieldByName('bdCODIGO').AsInteger := wCodigo;
         cdsDados.FieldByName('bdTIPO').AsInteger := wTipo;
         cdsDados.FieldByName('bdCPF').AsString := wCPF;
         cdsDados.FieldByName('bdNOME').AsString := wNome;
         cdsDados.FieldByName('bdENDERECO').AsString := wEndereco;
         cdsDados.FieldByName('bdISENTO').AsBoolean := wIsento;

         // Salva os dados no CDS
         cdsDados.Post;

         // Informa ao usu?rio
         ShowMessage('Dados salvos');
       end;
  except
    ShowMessage('ERRO: dados incorretos');
  end;
  pLimparTela;
  btExcluir.Enabled := False;
end;

procedure TfrCadastro.cbPessoaChange(Sender: TObject);
begin
  if (ckIsento.Enabled) then
     begin
       ckIsento.Enabled := False;
       ckIsento.Checked := False;
     end
  else
     ckIsento.Enabled := True;

  if (lbCPF.Caption = 'CPF:') and (cbPessoa.ItemIndex = 1) then
     begin
       lbCPF.Caption := 'CNPJ:';
       edCPF.TextHint := 'Insira o CNPJ';
     end
  else if (lbCPF.Caption = 'CNPJ:') and (cbPessoa.ItemIndex = 0) then
     begin
       lbCPF.Caption := 'CPF:';
       edCPF.TextHint := 'Insira o CPF';
     end;
end;

procedure TfrCadastro.edCodigoExit(Sender: TObject);
begin
  if (edCodigo.Text <> '') then
     begin
       try
         cdsDados.IndexFieldNames := 'bdCODIGO';
         if (cdsDados.FindKey([StrToInt(edCodigo.Text)])) then
            begin
              cbPessoa.ItemIndex := cdsDados.FieldByName('bdTIPO').AsInteger;
              edCPF.Text := cdsDados.FieldByName('bdCPF').AsString;
              edNome.Text := cdsDados.FieldByName('bdNOME').AsString;
              edEndereco.Text := cdsDados.FieldByName('bdENDERECO').AsString;
              ckIsento.Checked := cdsDados.FieldByName('bdISENTO').AsBoolean;
              btExcluir.Enabled := True;
            end;
       except
       end;
     end;
end;

function TfrCadastro.fCalcularCNPJ(prEntrada: String): Integer;
var
  wIncrementador, wSoma, wCount, wNumeroTemporario, wResto : Integer;
begin
  wIncrementador := 2;
  wSoma := 0;
  for wCount := Length(prEntrada) downto 1 do
    begin
      if (wIncrementador = 10) then
         wIncrementador := 2;
      wNumeroTemporario := StrToInt(prEntrada[wCount]) * wIncrementador;
      wSoma := wSoma + wNumeroTemporario;
      wIncrementador := wIncrementador + 1;
    end;
  wResto := wSoma mod 11;
  if (wResto < 2) then
     Result := 0
  else
     Result := 11 - wResto;
end;

function TfrCadastro.fCalcularCPF(prEntrada: String): Integer;
var
  wIncrementador, wSoma, wCount, wNumeroTemporario, wResto : Integer;
begin
  wIncrementador := 2;
  wSoma := 0;
  for wCount := Length(prEntrada) downto 1 do
    begin
      wNumeroTemporario := StrToInt(prEntrada[wCount]) * wIncrementador;
      wSoma := wSoma + wNumeroTemporario;
      wIncrementador := wIncrementador + 1;
    end;
  wResto := wSoma mod 11;
  if (wResto < 2) then
     Result := 0
  else
     Result := 11 - wResto;
end;

function TfrCadastro.fDiretorio: String;
begin
  Result := 'C:\Users\prog28\Desktop\Dados';
end;

procedure TfrCadastro.FormShow(Sender: TObject);
begin
  // Cria o CDS
  cdsDados := TClientDataSet.Create(Self);

  // Adiciona as colunas
  cdsDados.FieldDefs.Add('bdCODIGO', ftInteger);
  cdsDados.FieldDefs.Add('bdNOME', ftString, 255);
  cdsDados.FieldDefs.Add('bdTIPO', ftInteger);
  cdsDados.FieldDefs.Add('bdCPF', ftString, 30);
  cdsDados.FieldDefs.Add('bdENDERECO', ftString, 255);
  cdsDados.FieldDefs.Add('bdISENTO', ftBoolean);

  // Adiciona os ?ndices
  cdsDados.IndexDefs.Add('iCODIGO', 'bdCODIGO', [ixPrimary,ixUnique]);
  cdsDados.IndexDefs.Add('iNOME', 'bdNOME', [ixCaseInsensitive]);
  cdsDados.IndexDefs.Add('iTIPO', 'bdTIPO', [ixCaseInsensitive]);
  cdsDados.IndexDefs.Add('iCPF', 'bdCPF', [ixCaseInsensitive]);
  cdsDados.IndexDefs.Add('iENDERECO', 'bdENDERECO', [ixCaseInsensitive]);
  cdsDados.IndexDefs.Add('iISENTO', 'bdISENTO', [ixCaseInsensitive]);

  // Ativa e abre o CDS
  cdsDados.CreateDataSet;
  cdsDados.Open;

  // Conecta DS ao CDS
  dsDados.DataSet := cdsDados;

  // Desabilita a op??o de isento
  ckIsento.Enabled := False;

  // Desabilita o bot?o excluir
  btExcluir.Enabled := False;

  // Cria a lista
  wLista := TStringList.Create;

  // Verifica e caso necess?rio cria o diret?rio para guardar os arquivos
  if not(DirectoryExists(fDiretorio)) then
     ForceDirectories(fDiretorio);
end;

function TfrCadastro.fVerificarCPFCNPJ(prEntrada : String): Boolean;
var
  wValorCalculado : String;
begin
  if (lbCPF.Caption = 'CPF:') then
     begin
       if (Length(prEntrada) <> 11) then
          Result := False
       else
          begin
            wValorCalculado := Copy(prEntrada, 1,9);
            wValorCalculado := wValorCalculado + IntToStr(fCalcularCPF(wValorCalculado));
            wValorCalculado := wValorCalculado + IntToStr(fCalcularCPF(wValorCalculado));
            if (wValorCalculado = prEntrada) then
               Result := True
            else
               Result := False;
          end;
     end
  else
     begin
       if (Length(prEntrada) <> 14) then
          Result := False
       else
          begin
            wValorCalculado := Copy(prEntrada, 1,12);
            wValorCalculado := wValorCalculado + IntToStr(fCalcularCNPJ(wValorCalculado));
            wValorCalculado := wValorCalculado + IntToStr(fCalcularCNPJ(wValorCalculado));
            if (wValorCalculado = prEntrada) then
               Result := True
            else
               Result := False;
          end;
     end;
end;

procedure TfrCadastro.grDadosTitleClick(Column: TColumn);
begin
  if (Column.FieldName = 'bdCODIGO') then
     cdsDados.IndexFieldNames := 'bdCODIGO'
  else if (Column.FieldName = 'bdNOME') then
     cdsDados.IndexFieldNames := 'bdNOME';
end;

procedure TfrCadastro.pLimparTela;
begin
  edCodigo.Clear;
  edCPF.Clear;
  edNome.Clear;
  edEndereco.Clear;
  cbPessoa.ItemIndex := 0;
  ckIsento.Checked := False;
  edCodigo.SetFocus;
end;

end.
