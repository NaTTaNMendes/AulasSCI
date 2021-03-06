unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Vcl.StdCtrls, uPessoa, uDataModule;

type
  TfrCadastro = class(TfrCadastroPadrao)
    lbCodigo: TLabel;
    lbCPF: TLabel;
    lbNome: TLabel;
    lbEndereco: TLabel;
    edCodigo: TEdit;
    cbPessoa: TComboBox;
    edCPF: TEdit;
    edNome: TEdit;
    edEndereco: TEdit;
    ckIsento: TCheckBox;
    btSalvar: TButton;
    btExcluir: TButton;
    btExportar: TButton;
    btLimpar: TButton;
    btTelaConsulta: TButton;
    procedure cbPessoaChange(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btTelaConsultaClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    wPessoaFisica : TPessoaFisica;
    wPessoaJuridica : TPessoaJuridica;
    wLista : TStringList;
    procedure pLimparTela;
    procedure pLimparDados;
    function fDiretorio : String;
    function fVerificarCPFCNPJ(prEntrada : String) : Boolean;
    function fVerificaCodigo() : Boolean;
    function fVerificaNome() : Boolean;
    function fVerificaEndereco() : Boolean;
  end;

var
  frCadastro: TfrCadastro;

implementation
uses uConsulta;
{$R *.dfm}

{ TfrCadastroPadrao1 }

procedure TfrCadastro.btExcluirClick(Sender: TObject);
begin
  inherited;
  if (edCodigo.Text <> '') then
     begin
       try
         if (wPessoaJuridica.fDeletarPessoa(StrToInt(edCodigo.Text))) then
            begin
              ShowMessage('DADOS DELETADOS');
              pLimparTela;
              pLimparDados;
              btExcluir.Enabled := False;
            end
         else
            ShowMessage('FALHA AO DELETAR DADOS');
       except
         ShowMessage('ERRO: C?DIGO INV?LIDO');
       end;
     end;
end;

procedure TfrCadastro.btExportarClick(Sender: TObject);
begin
  inherited;

  if (dmModulo.cdsDados.RecordCount = 0) then
     ShowMessage('ERRO: nenhum dado adicionado para exportar')
  else
     begin
       wLista := wPessoaJuridica.fRetornarRelatorio;
       if DirectoryExists(fDiretorio) then
          wLista.SaveToFile(fDiretorio + '\dados.txt')
       else
          ForceDirectories(fDiretorio + '\dados.txt');

       ShowMessage('Dados salvos no caminho: ' + fDiretorio + '\dados.txt');
     end;
end;

procedure TfrCadastro.btLimparClick(Sender: TObject);
var
  wTexto : String;
begin
  inherited;
  pLimparTela;
  btExcluir.Enabled := False;
end;

procedure TfrCadastro.btSalvarClick(Sender: TObject);
var
  wPasse : Boolean;
begin
  inherited;
  wPasse := True;
  if not(fVerificaCodigo) then
     wPasse := False
  else if not(fVerificaNome) then
     wPasse := False
  else if not(fVerificaEndereco) then
     wPasse := False
  else if not(fVerificarCPFCNPJ(edCPF.Text)) then
     wPasse := False;

  if (wPasse) then
     begin
       if (cbPessoa.ItemIndex = 0) then
          begin
            wPessoaFisica.wCPF := edCPF.Text;
            wPessoaFisica.wCodigo := StrToInt(edCodigo.Text);
            wPessoaFisica.wNome := edNome.Text;
            wPessoaFisica.wEndereco := edEndereco.Text;
            wPessoaFisica.pInserirPessoaFisica(wPessoaFisica);
          end
       else
          begin
            wPessoaJuridica.wCNPJ := edCPF.Text;
            wPessoaJuridica.wCodigo := StrToInt(edCodigo.Text);
            wPessoaJuridica.wNome := edNome.Text;
            wPessoaJuridica.wEndereco := edEndereco.Text;

            if (ckIsento.Checked) then
               wPessoaJuridica.wIsento := True
            else
               wPessoaJuridica.wIsento := False;

            wPessoaJuridica.pInserirPessoajuridica(wPessoaJuridica);
          end;
       ShowMessage('DADOS CADASTRADOS');
       pLimparTela;
       pLimparDados;
     end;
end;

procedure TfrCadastro.btTelaConsultaClick(Sender: TObject);
var
  wConsulta : TfrConsulta;
begin
  inherited;
   wConsulta := TfrConsulta.Create(Self);
  wConsulta.Show;
end;

procedure TfrCadastro.cbPessoaChange(Sender: TObject);
begin
  inherited;

  if (cbPessoa.ItemIndex = 0) then
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
  inherited;
  if (edCodigo.Text <> '') then
     begin
       try
          wPessoaJuridica := wPessoaJuridica.fRetornarPessoa(StrToInt(edCodigo.Text));
          if (wPessoaJuridica.wNome <> '') then
             begin
               edCPF.Text := wPessoaJuridica.wCNPJ;
               edNome.Text := wPessoaJuridica.wNome;
               edEndereco.Text := wPessoaJuridica.wEndereco;
               if (Length(edCPF.Text) = 11) then
                  begin
                    ckIsento.Checked := False;
                    ckIsento.Enabled := False;
                  end
               else
                  begin
                    ckIsento.Checked := wPessoaJuridica.wIsento;
                    ckIsento.Enabled := True;
                  end;
               btExcluir.Enabled := True;
             end;

       except
       end;
     end;
  pLimparDados;
end;

function TfrCadastro.fDiretorio: String;
begin
  Result := 'C:\Users\prog28\Desktop\Dados';
end;

procedure TfrCadastro.FormShow(Sender: TObject);
begin
  inherited;
  wPessoaFisica := TPessoaFisica.Create;
  wPessoaJuridica := TPessoaJuridica.Create;

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

function TfrCadastro.fVerificaCodigo: Boolean;
begin
  try
    StrToInt(edCodigo.Text);
    Result := True;
  except
    ShowMessage('C?digo inv?lido');
    pLimparDados;
    Result := False;
  end;

end;

function TfrCadastro.fVerificaEndereco: Boolean;
begin
  if (edEndereco.Text = '') then
     begin
       ShowMessage('Endere?o inv?lido');
       pLimparDados;
       Result := False;
     end
  else
     Result := True
end;

function TfrCadastro.fVerificaNome: Boolean;
begin
  if (edNome.Text = '') then
     begin
       ShowMessage('Nome inv?lido');
       pLimparDados;
       Result := False;
     end
  else
     Result := True
end;

function TfrCadastro.fVerificarCPFCNPJ(prEntrada: String): Boolean;
var
  wValorCalculado, wTemp, wPonto1, wPonto2, wTraco : String;
  wReduzido, wPasse : Boolean;
begin
  if (lbCPF.Caption = 'CPF:') then
     begin
       wReduzido := True;      
       if (Length(prEntrada) <> 11) and (Length(prEntrada) <> 14) then
          begin
            ShowMessage('CPF inv?lido');
            pLimparDados;
            Result := False;
            Exit;
          end
       else if (Length(prEntrada) = 14) then
          begin
             wPasse := False;
             wReduzido := False;
             if (Copy(prEntrada, 4, 1) <> '.') then
                wPasse := True
             else if (Copy(prEntrada, 8, 1) <> '.') then
                wPasse := True
             else if (Copy(prEntrada, 12, 1) <> '-') then
                wPasse := True;
             if (wPasse) then
                begin
                  ShowMessage('CPF inv?lido');
                  pLimparDados;
                  Result := False;
                  Exit;                  
                end;                
          end;
      
       if not(wReduzido) then
          begin
            wTemp := Copy(prEntrada, 1, 3);
            wTemp := wTemp + Copy(prEntrada, 5, 3);
            wTemp := wTemp + Copy(prEntrada, 9, 3);
            wTemp := wTemp + Copy(prEntrada, 13, 2);
            prEntrada := wTemp;
          end;

       wValorCalculado := Copy(prEntrada, 1,9);
       wValorCalculado := wValorCalculado + IntToStr(wPessoaFisica.fCalcularCPF(wValorCalculado));
       wValorCalculado := wValorCalculado + IntToStr(wPessoaFisica.fCalcularCPF(wValorCalculado));
       if (wValorCalculado = prEntrada) then
          Result := True
       else
          begin
            ShowMessage('CPF inv?lido');
            pLimparDados;
            Result := False;
            Exit;
          end;
          
     end
  else
     begin
       wReduzido := True;
       if (Length(prEntrada) <> 14) and (Length(prEntrada) <> 18) then
          begin
            ShowMessage('CNPJ inv?lido');
            pLimparDados;
            Result := False;
            Exit;
          end
       else if (Length(prEntrada) = 18) then
          begin
             wPasse := False;
             wReduzido := False;
             if (Copy(prEntrada, 3, 1) <> '.') then
                wPasse := True
             else if (Copy(prEntrada, 7, 1) <> '.') then
                wPasse := True
             else if (Copy(prEntrada, 11, 1) <> '/') then
                wPasse := True
             else if (Copy(prEntrada, 16, 1) <> '-') then
                wPasse := True;
             if (wPasse) then
                begin
                  ShowMessage('CNPJ inv?lido');
                  pLimparDados;
                  Result := False;
                  Exit;                  
                end;                
          end;

       if not(wReduzido) then
          begin
            wTemp := Copy(prEntrada, 1, 2);
            wTemp := wTemp + Copy(prEntrada, 4, 3);
            wTemp := wTemp + Copy(prEntrada, 8, 3);
            wTemp := wTemp + Copy(prEntrada, 12, 4);
            wTemp := wTemp + Copy(prEntrada, 17, 2);
            ShowMessage(wTemp);
            prEntrada := wTemp;
          end;
          
       wValorCalculado := Copy(prEntrada, 1,12);
       wValorCalculado := wValorCalculado + IntToStr(wPessoaJuridica.fCalcularCNPJ(wValorCalculado));
       wValorCalculado := wValorCalculado + IntToStr(wPessoaJuridica.fCalcularCNPJ(wValorCalculado));
       if (wValorCalculado = prEntrada) then
          Result := True
       else
          begin
            ShowMessage('CNPJ inv?lido');
            pLimparDados;
            Result := False;
          end;
     end;
end;

procedure TfrCadastro.pLimparDados;
begin
  wPessoaFisica.wCPF := '' ;
  wPessoaFisica.wCodigo := 0;
  wPessoaFisica.wNome := '';
  wPessoaFisica.wEndereco := '';
  wPessoaJuridica.wIsento := False;
  wPessoaJuridica.wCNPJ := '';
  wPessoaJuridica.wCodigo := 0;
  wPessoaJuridica.wNome := '';
  wPessoaJuridica.wEndereco := '';
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
  ckIsento.Enabled := False;
  lbCPF.Caption := 'CPF:';
  edCPF.TextHint := 'Insira o CPF';
end;

end.
