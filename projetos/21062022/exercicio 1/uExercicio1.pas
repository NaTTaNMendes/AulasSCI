unit uExercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrExercicio1 = class(TForm)
    lbNumero1: TLabel;
    lbNumero2: TLabel;
    lbNumero3: TLabel;
    edNumero1: TEdit;
    edNumero2: TEdit;
    edNumero3: TEdit;
    btIniciar: TButton;
    procedure btIniciarClick(Sender: TObject);
    procedure edNumero1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frExercicio1: TfrExercicio1;

implementation

{$R *.dfm}

procedure TfrExercicio1.btIniciarClick(Sender: TObject);
var
  wNumero1, wNumero2, wNumero3, wMaior: Integer;
begin
  // Verifica se as labels n?o est?o vazias
  if (edNumero1.Text = '') or (edNumero2.Text = '') or (edNumero3.Text = '') then
     begin
       ShowMessage('Insira valores v?lidos!');
     end
  else
     begin
       // Instanciando vari?veis
       wNumero1 := StrToInt(edNumero1.Text);
       wNumero2 := StrToInt(edNumero2.Text);
       wNumero3 := StrToInt(edNumero3.Text);
       wMaior := wNumero1;

       // Verificando os n?meros
       if (wNumero3 > wMaior) then
          begin
            wMaior := wNumero3;
          end;

       if (wNumero2 > wMaior) then
          begin
            wMaior := wNumero2;
          end;

       // Retornando para o usu?rio
       ShowMessage('Maior n?mero: ' + IntToStr(wMaior));
     end;
end;

procedure TfrExercicio1.edNumero1Exit(Sender: TObject);
var
  wNumeroTemporario: Integer;
begin
  try
    wNumeroTemporario :=  StrToInt(TEdit(Sender).Text);
  except
    ShowMessage('Insira n?meros v?lidos');
    TEdit(Sender).Clear;
  end;
end;

end.
