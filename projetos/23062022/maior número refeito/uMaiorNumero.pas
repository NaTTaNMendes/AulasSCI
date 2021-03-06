unit uMaiorNumero;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrMaior = class(TForm)
    lbNumero: TLabel;
    edNumero: TEdit;
    cbQuantidade: TComboBox;
    lbQuantidade: TLabel;
    ckPersonalizada: TCheckBox;
    edQuantidade: TEdit;
    btAdicionar: TButton;
    lbQuantidadeTexto: TLabel;
    lbQuantidadeAdicionada: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ckPersonalizadaClick(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure cbQuantidadeChange(Sender: TObject);
  private
    { Private declarations }
    wNumeros : TStringList;
    procedure pTeste;
    procedure pMostrar;
    procedure pLimparTela;
    procedure pLimparDados;
  public
    { Public declarations }
  end;

var
  frMaior: TfrMaior;

implementation

{$R *.dfm}

procedure TfrMaior.btAdicionarClick(Sender: TObject);
begin
  if (ckPersonalizada.Checked = False) then
     begin
       try
         pTeste;
         wNumeros.Add(edNumero.text);
         if ((wNumeros.Count = 5) and (cbQuantidade.ItemIndex = 0)) or ((wNumeros.Count = 10) and (cbQuantidade.ItemIndex = 1)) or ((wNumeros.Count = 15) and (cbQuantidade.ItemIndex = 2)) then
            pMostrar
       except
         ShowMessage('Valor inválido');
       end;
     end
  else
     begin
       try
         pTeste;
         wNumeros.Add(edNumero.text);
         if (wNumeros.Count = StrToInt(edQuantidade.Text)) then
           pMostrar;
       except
         ShowMessage('Valor ou quantidade inválidos');
       end;
     end;
  pLimparTela;
  lbQuantidadeAdicionada.Caption := IntToStr(wNumeros.Count);
end;

procedure TfrMaior.cbQuantidadeChange(Sender: TObject);
begin
  pLimparTela;
  pLimparDados;
end;

procedure TfrMaior.ckPersonalizadaClick(Sender: TObject);
begin
  if (ckPersonalizada.Checked = True) then
     begin
       cbQuantidade.Enabled := False;
       edQuantidade.Enabled := True;
     end
  else
     begin
       cbQuantidade.Enabled := True;
       edQuantidade.Enabled := False;
     end;
  pLimparTela;
  pLimparDados;
end;

procedure TfrMaior.FormShow(Sender: TObject);
begin
  wNumeros := TStringList.Create;
  edQuantidade.Enabled := False;
end;

procedure TfrMaior.pLimparDados;
begin
  wNumeros.Clear;
  lbQuantidadeAdicionada.Caption := '0';
end;

procedure TfrMaior.pLimparTela;
begin
  edNumero.Clear;
  edNumero.SetFocus;
end;

procedure TfrMaior.pMostrar;
var
  wMaior, wCount : Integer;
begin
  wMaior := 0;
  wCount := 0;
  for wCount := 0 to wNumeros.Count-1 do
    begin
      if (StrToInt(wNumeros[wCount]) > wMaior) then
         wMaior := StrToInt(wNumeros[wCount]);
    end;
  ShowMessage('Maior: ' + IntToStr(wMaior));
  pLimparTela;
  pLimparDados;
end;

procedure TfrMaior.pTeste;
var
  wTesteNumero, wTesteQuantidade : Integer;
begin
  if (ckPersonalizada.Checked = True) then
     begin
       wTesteQuantidade := StrToInt(edQuantidade.text);
       wTesteNumero := StrToInt(edNumero.Text);
     end
  else
     wTesteNumero := StrToInt(edNumero.text);
end;

end.
