unit uExercicioMaior;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.AppAnalytics,
  Vcl.WinXCtrls;

type
  TfrExercicioMaior = class(TForm)
    lbNumero: TLabel;
    edNumero: TEdit;
    btAdicionar: TButton;
    lbQuantidade: TLabel;
    cbQuantidade: TComboBox;
    lbNumerosInformados: TLabel;
    lbQuantidadeInformada: TLabel;
    ckPersonalizado: TCheckBox;
    edQuantidadePersonalizada: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure pLimparTela;
    procedure pMostrarMaior;
    procedure pZerarValores;
    procedure cbQuantidadeChange(Sender: TObject);
    procedure ckPersonalizadoClick(Sender: TObject);
    procedure edQuantidadePersonalizadaChange(Sender: TObject);
  private
    { Private declarations }
    wStringList : TStringList;
    wVetorQuantidades : array[0..19] of Integer;
  public
    { Public declarations }
  end;

var
  frExercicioMaior: TfrExercicioMaior;

implementation

{$R *.dfm}

procedure TfrExercicioMaior.btAdicionarClick(Sender: TObject);
var
  wNumeroTemporario : Integer;
begin
  if (cbQuantidade.Enabled = True) then
     begin
       try
         wNumeroTemporario := StrToInt(edNumero.Text);
         wStringList.Add(edNumero.Text);
         if (wStringList.Count = wVetorQuantidades[cbQuantidade.ItemIndex]) then
            pMostrarMaior
       except
         ShowMessage('Valor inv?lido');
       end;
     end
  else
     begin
       try
         wNumeroTemporario := StrToInt(edNumero.Text);
         wStringList.Add(edNumero.Text);
         wNumeroTemporario := StrToInt(edQuantidadePersonalizada.Text);
         if (wStringList.Count = StrToInt(edQuantidadePersonalizada.Text)) then
            pMostrarMaior;
       except
         ShowMessage('Valor ou quantidade inv?lido(s)');
       end;
     end;
  pLimparTela;
  lbQuantidadeInformada.Caption := IntToStr(wStringList.Count);
end;

procedure TfrExercicioMaior.cbQuantidadeChange(Sender: TObject);
begin
  pZerarValores;
end;

procedure TfrExercicioMaior.ckPersonalizadoClick(Sender: TObject);
begin
  if (ckPersonalizado.Checked = True) then
     begin
       cbQuantidade.Enabled := False;
       edQuantidadePersonalizada.Enabled := True;
     end
  else
     begin
       cbQuantidade.Enabled := True;
       edQuantidadePersonalizada.Enabled := False;
     end;
  pZerarValores;
end;

procedure TfrExercicioMaior.edQuantidadePersonalizadaChange(Sender: TObject);
begin
  pZerarValores;
end;

procedure TfrExercicioMaior.FormShow(Sender: TObject);
begin
  wStringList := TStringList.Create;
  wVetorQuantidades[0] := 5;
  wVetorQuantidades[1] := 10;
  wVetorQuantidades[2] := 15;
  wVetorQuantidades[3] := 20;
  wVetorQuantidades[4] := 25;
  wVetorQuantidades[5] := 30;
  wVetorQuantidades[6] := 35;
  wVetorQuantidades[7] := 40;
  wVetorQuantidades[8] := 45;
  wVetorQuantidades[9] := 50;
  wVetorQuantidades[10] := 55;
  wVetorQuantidades[11] := 60;
  wVetorQuantidades[12] := 65;
  wVetorQuantidades[13] := 70;
  wVetorQuantidades[14] := 75;
  wVetorQuantidades[15] := 80;
  wVetorQuantidades[16] := 85;
  wVetorQuantidades[17] := 90;
  wVetorQuantidades[18] := 95;
  wVetorQuantidades[19] := 100;
  edQuantidadePersonalizada.Enabled := False;
end;

procedure TfrExercicioMaior.pLimparTela;
begin
  edNumero.Clear;
  edNumero.SetFocus;
end;

procedure TfrExercicioMaior.pMostrarMaior;
var
  wMaior, wCount : Integer;
begin
  wMaior := 0;
  wCount := 0;

  for wCount := 0 to wStringList.Count-1 do
    begin
      if StrToInt(wStringList[wCount]) > wMaior then
         wMaior := StrToInt(wStringList[wCount]);
    end;

  ShowMessage('Maior n?mero: ' + IntToStr(wMaior));
  pLimparTela;
  pZerarValores;
end;

procedure TfrExercicioMaior.pZerarValores;
begin
  wStringList.Clear;
  lbQuantidadeInformada.Caption := '0';
end;

end.
