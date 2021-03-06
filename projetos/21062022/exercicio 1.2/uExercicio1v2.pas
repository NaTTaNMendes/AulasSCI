unit uExercicio1v2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrExercicio1 = class(TForm)
    lbNumero: TLabel;
    edNumero: TEdit;
    btAdicionar: TButton;
    btMostrar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
    procedure pLimparTela;
  private
    { Private declarations }
    wStringList : TStringList;
    wMaior : Integer;
  public
    { Public declarations }
  end;

var
  frExercicio1: TfrExercicio1;

implementation

{$R *.dfm}

procedure TfrExercicio1.btAdicionarClick(Sender: TObject);
var
  wNumeroTemporario : Integer;
begin
  try
    wNumeroTemporario := StrToInt(edNumero.Text);
    wStringList.Add(edNumero.Text);
    pLimparTela;
  except
    ShowMessage('Informe um n?mero v?lido')
  end;
end;

procedure TfrExercicio1.btMostrarClick(Sender: TObject);
var
  wPosicao : Integer;
begin
  wPosicao := 0;
  if wStringList.Count = 0 then
     begin
       wMaior := 0;
     end
  else
     begin
       for wPosicao := 0 to wStringList.Count-1 do
         begin
           if StrToInt(wStringList[wPosicao]) > wMaior then
              begin
                wMaior := StrToInt(wStringList[wPosicao]);
              end;
         end;
     end;
     ShowMessage('Maior: ' + IntToStr(wMaior));
     wStringList.Clear;
     wMaior := 0;
     pLimparTela;
end;

procedure TfrExercicio1.FormShow(Sender: TObject);
begin
  wStringList := TStringList.Create;
  wMaior := 0;
end;

procedure TfrExercicio1.pLimparTela;
begin
  edNumero.Clear;
  edNumero.SetFocus;
end;

end.
